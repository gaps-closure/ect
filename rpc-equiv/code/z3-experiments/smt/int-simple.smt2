(declare-fun ff (Int Int) Bool)

(define-fun g ((c Int) (d Int)) Bool
    (ff (div (+ c d) 2) (div (- c d) 2))
)

(define-fun f ((a Int) (b Int)) Bool
    (g (+ a b) (- a b))
)

(assert (not (forall ((a Int) (b Int)) (= (f a b) (ff a b)))))

(check-sat)