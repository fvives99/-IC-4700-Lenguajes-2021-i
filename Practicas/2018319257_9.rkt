;; Unir duplicados consecutivos de elementos de lista en sublistas.
;; Si una lista contiene elementos repetidos, deben colocarse en sublistas separadas.

;;Ejemplo:
;;* (pack '(a a a a b c c a a d e e e e))
;; RESPUESTA =((A A A A) (B) (C C) (A A) (D) (E E E E))

(define pack
  (lambda (lista)
    (pack-aux lista '() '())))

;;
(define pack-aux
 (lambda (lista resp temp)
    (cond ((null? lista) (append resp (list temp)))
          ((null? temp) (pack-aux (cdr lista) resp (append '() (list (car lista)))))
         ((equal? (list (car lista)) (my-last temp)) (pack-aux (cdr lista) resp (append temp (list (car lista)))))
          (else (pack-aux lista (append resp (list temp)) '())))))

;;Separa independientemente
;(define pack-aux
; (lambda (lista resp temp)
;    (cond ((null? lista) (append resp (list temp)))
;          ((null? temp) (pack-aux (cdr lista) resp (append '() (list (car lista)))))
;         ((equal? (list (car lista)) (mlast temp)) (pack-aux (cdr lista) resp (append temp (list (car lista)))))
;          (else (pack-aux lista (append resp (list temp)) '())))))


;;
(define my-last
  (lambda (lista)
    (cond ((null? lista) '())
          ((null? (cdr lista)) (list (car lista)))
          (else (my-last (cdr lista))))))