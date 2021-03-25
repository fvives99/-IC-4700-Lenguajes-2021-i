
;;Extrae una porción de una lista.
    ;;Dados dos índices, I y K, el segmento es la lista que contiene los elementos entre el elemento I'th y K'th de
   ;;la lista original (ambos límites incluidos). Empiece a contar los elementos con 1.
   
    ;;Ejemplo:
    ;;* (slice '(a b c d e f g h i k) 3 7)
    ;;(C D E F G)



(define slice
  (lambda (lista inicio final)
    (slice-aux lista inicio final 1 '())))

;;
(define slice-aux
  (lambda (lista inicio final pos resp)
    (cond ((null? lista ) resp)
      ((and (<= inicio pos ) (<= pos final)) (slice-aux (cdr lista) inicio final (+ pos 1) (append resp (list (car lista)))))
          (else (slice-aux (cdr lista) inicio final (+ pos 1) resp)))))