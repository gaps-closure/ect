;;; TYPES
(declare-datatypes () ((Color Orange Purple)))

;;; DECLARATIONS
(declare-fun enclave         (Int) Color) ; Node -> Color
(declare-fun labeled         (Int) Bool ) ; Node -> Bool
(declare-fun level           (Int) Color) ; Node -> Color
(declare-fun remotelevel     (Int) Color) ; Node -> Color

(declare-fun ctrldep-callinv (Int Int) Bool) ; Node -> Node -> Bool
(declare-fun ctrldep-callret (Int Int) Bool) ; ..
(declare-fun ctrldep-entry   (Int Int) Bool)
(declare-fun ctrldep-br      (Int Int) Bool)
(declare-fun ctrldep-other   (Int Int) Bool)
(declare-fun datadep-defuse  (Int Int) Bool)
(declare-fun datadep-raw     (Int Int) Bool)
(declare-fun datadep-ret     (Int Int) Bool)
(declare-fun datadep-alias   (Int Int) Bool)

;;; RULES
(assert (forall ((x Int))
  (=> (labeled x) (= (level x) (enclave x)))
))
(assert (forall ((x Int) (y Int))
  (=> (ctrldep-entry x y) (= (enclave x) (enclave y)))
))
(assert (forall ((x Int) (y Int))
  (=> (datadep-defuse x y) (= (enclave x) (enclave y)))
))

;;; INITIAL ENCODING
(assert (labeled 1))
(assert (= (level 1) Purple))

(assert (datadep-defuse 1 3))

(assert (ctrldep-entry 2 3))
(assert (ctrldep-entry 2 4))
(assert (ctrldep-entry 2 5))
(assert (ctrldep-entry 2 6))

(assert (labeled 7))
(assert (= (level 7) Orange))

;;; CHECK
(check-sat)
(get-value (enclave 1))
