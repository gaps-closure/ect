;;; enclave assignment function
(declare-fun enclave (Int) String) ; string for readability, but this should be an integer

;;; edge functions
(declare-fun datadep-defuse (Int Int) Bool)
(declare-fun controldep-entry (Int Int) Bool)

;;; rules

; enclave domain
(assert (forall ((x Int)) (or (= (enclave x) "purple") (= (enclave x) "orange"))))

; function definitions must be in the same enclave as their instructions
(assert (forall ((x Int) (y Int)) (=> (controldep-entry x y) (= (enclave x) (enclave y)))))

; two instructions in the same function must be in the same enclave
(assert (forall ((x Int) (y Int) (z Int))
                (=> (and (controldep-entry x y) (controldep-entry x z))
                    (= (enclave y) (enclave z)))))

; instructions connected to a definition by a DATADEP_DEFUSE must be in the same
; enclave as their definition
(assert (forall ((x Int) (y Int)) (=> (datadep-defuse x y) (= (enclave x) (enclave y)))))

; let: 123 be the id of the VAR_STATICFUNCTION node which defines @get_b.b
;      456 be the FUNCTIONENTRY node which defines get_b()
;      789 be an INSTR node which uses @get_b.b

;;; partial enclave assignments derived from labels
(assert (= (enclave 123) "purple"))

;;; PDG edges determined by parsing LLVM
(assert (datadep-defuse 123 789))
(assert (controldep-entry 456 789))
; plus (controldep-entry 456 X) edges for all nodes X in get_b()

(check-sat)
(get-model)
