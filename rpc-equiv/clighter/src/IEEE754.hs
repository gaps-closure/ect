module IEEE754 where

import Data.Bits ((.&.), (.|.), shiftL, shiftR)
import Data.Word (Word8)
import Data.List (foldl')

type Exponent = Int
type Fraction = Integer
type BitCount = Int
type ByteCount = Int

floatComponents :: (RealFloat a) => ByteCount -> a -> (Bool, Fraction, Exponent)
floatComponents width v =
    case (dFraction, dExponent, biasedE) of
        (0, 0, _) -> (sign, 0, 0)
        (_, _, 0) -> (sign, truncatedFraction + 1, 0)
        _ -> (sign, truncatedFraction, biasedE)
    where dFraction   = fst (decodeFloat v)
          dExponent   = snd (decodeFloat v)
          eWidth      = exponentWidth (width * 8)
          fWidth      = (width * 8) - eWidth - 1 -- 1 for sign bit
          biasedE     = bias (dExponent + fWidth) eWidth
          absFraction = abs dFraction
          sign        = (1.0 / v) < 0.0 -- Weird check is for detecting -0.0
          truncatedFraction = absFraction - (1 `shiftL` fWidth)
          -- Fraction needs to be truncated, depending on the exponent

floatToMerged :: (RealFloat a) => ByteCount -> a -> Integer
floatToMerged width v = mergeFloatBits' (floatComponents width v)
    where mergeFloatBits' (s, f, e) = mergeFloatBits fWidth eWidth s f e
          eWidth      = exponentWidth (width * 8)
          fWidth      = (width * 8) - eWidth - 1 -- 1 for sign bit

mergeFloatBits :: BitCount -> BitCount -> Bool -> Fraction -> Exponent -> Integer
mergeFloatBits fWidth eWidth s f e = shiftedSign .|. shiftedFrac .|. shiftedExp
    where sBit = (if s then 1 else 0) :: Integer
          shiftedSign = (sBit `shiftL` (fWidth + eWidth)) :: Integer
          shiftedExp  = ((fromIntegral e) `shiftL` fWidth) :: Integer
          shiftedFrac = f

encodeIntBE :: ByteCount -> Integer -> [Word8]
encodeIntBE 0 _ = []
encodeIntBE width x = (encodeIntBE (width - 1) (x `shiftR` 8)) ++ [step]
    where step = (fromIntegral x) .&. 0xFF

bias :: (Integral a, Integral b) => a -> b -> a
bias e eWidth = e - (1 - (2 `iExp` (eWidth - 1)))

unbias :: Exponent -> BitCount -> Exponent
unbias e eWidth = e + 1 - (2 `iExp` (eWidth - 1))

parseFloat :: (RealFloat a) => [Word8] -> a
parseFloat bs = merge' (splitRawIEEE754 bs)
    where merge'  (sign, e, f) = encode' (mergeFloat e f width) * signFactor sign
          encode' (f, e)       = encodeFloat f e
          signFactor s         = if s then (-1) else 1
          width                = length bs * 8

bitSlice :: [Word8] -> BitCount -> BitCount -> Integer
bitSlice bs = sliceInt (foldl' step 0 bs) bitCount
    where step acc w     = (shiftL acc 8) + (fromIntegral w)
          bitCount       = ((length bs) * 8)

sliceInt :: Integer -> BitCount -> BitCount -> BitCount -> Integer
sliceInt x xBitCount s e = fromIntegral $ (x .&. startMask) `shiftR` (xBitCount - e)
    where startMask = n1Bits (xBitCount - s)
          n1Bits n  = (2 `iExp` n) - 1

splitRawIEEE754 :: [Word8] -> (Bool, Exponent, Fraction)
splitRawIEEE754 bs = (sign, expn, frac)
    where sign = (head bs .&. 0x80) == 0x80
          expn = fromIntegral $ bitSlice bs 1 (1 + w)
          frac = bitSlice bs (1 + w) (length bs * 8)
          w    = exponentWidth $ length bs * 8

mergeFloat :: Exponent -> Fraction -> BitCount -> (Integer, Int)
mergeFloat 0 0 _ = (0, 0)
mergeFloat e f width
    | e == eMax = error "Infinity/NaN not supported" -- Infinity / NaN (TODO)
    | otherwise = case e of
        0 -> (f, (-fWidth) + (unbiasedE + 1)) -- Denormalized
        _ -> (f + (1 `shiftL` fWidth), (-fWidth) + unbiasedE) -- Normalized
        where eWidth    = exponentWidth width
              fWidth    = width - eWidth - 1
              eMax      = (2 `iExp` eWidth) - 1
              unbiasedE = unbias e (eWidth)

exponentWidth :: BitCount -> BitCount
exponentWidth k
    | k == 16         = 5
    | k == 32         = 8
    | k `mod` 32 == 0 = ceiling ((4 * (log2 k)) :: Double) - 13
    | otherwise       = error "Invalid length of floating-point value"
    where
        log2 = (logBase 2) . fromIntegral

iExp :: (Integral a, Integral b) => Int -> a -> b
iExp b e = floor ((fromIntegral b) ** (fromIntegral e) :: Double)