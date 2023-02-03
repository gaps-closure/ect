(declare-fun ff ((_ BitVec 32) (_ BitVec 32)) Bool)

(define-fun g ((c (_ BitVec 32)) (d (_ BitVec 32))) Bool
    (ff (bvlshr (bvadd c d) (_ bv1 32)) (bvlshr (bvsub c d) (_ bv1 32)))
)

(define-fun f ((a (_ BitVec 32)) (b (_ BitVec 32))) Bool
    (g (bvadd a b) (bvsub a b))
)

(assert (not (forall ((a (_ BitVec 32)) (b (_ BitVec 32))) (=> (and (bvule a (_ bv100000 32)) (bvule b (_ bv100000 32))) (= (f a b) (ff a b))))))
;(assert (not (forall ((a (_ BitVec 32)) (b (_ BitVec 32))) (= (f a b) (ff a b)))))

(set-option :pp.bv-literals false)
(check-sat)
(get-model)