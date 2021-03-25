;; Compruebe si un término dado representa un árbol binario
;; Escriba un predicado istree que devuelva verdadero si y solo si su argumento es una lista que representa un árbol binario.
;; Ejemplo:
;; * (istree (a (b nil nil) nil))
;; T
;; * (istree (a (b nil nil)))
;; NULO

;;(a (b (d () ()) (f () ())) (c () (h (y () (k () ())) (L () ()))))
;;(a (b (d () ()) (f () ())) (c () (h (y () (k () ())) (L () ())) ()))
(define istree
  (lambda (arb)
    (cond ((null? arb) #t)
          ((list? (car arb)) #f)
          ((not (= (length (cdr arb)) 2)) #f)
          (else (and (istree (cadr arb)) (istree (caddr arb)))))))
