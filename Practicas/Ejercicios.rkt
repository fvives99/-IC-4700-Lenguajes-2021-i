#lang racket
;Ejericios práctica
;Erick Blanco
;P02
(define (my-but-last Lista)
  (cond ((null? (cddr Lista)) Lista)
(else (my-but-last(cdr Lista)))))


;P18

(define (split Lista elemento)
  (cond ((null? Lista) Lista)
        ((zero? elemento) '())
        [else (cons (car Lista) (split (cdr Lista) (- elemento 1)))]))




(define (slice Lista Inicio Fin)
  (cond ((null? Lista) Lista)
        ((zero? Inicio) (split Lista (+ Fin 1)))
        (else (slice (cdr Lista) (- Inicio 1) (- Fin 1)))))

;p22
; (range 4 9)
(define (range inicio fin)
  (cond ((> inicio fin) '())
        (else (cons inicio (range (+ inicio 1) fin)))))

(define (range-auto inicio fin)
  (range inicio fin))

;p23
; (rnd-select '(a b c d e f g h) 3)
(define (rnd-select lista cantidad)
    (rnd-select-aux lista cantidad '() (random (length lista))))

(define (rnd-select-aux lista cantidad acumulado posicion)
    (cond ((zero? cantidad) acumulado)
          ((null? (cdr lista)) (cons (car lista) acumulado))
          (else (rnd-select-aux (remove-at lista posicion) (- cantidad 1)
                                (cons (element-at lista posicion) acumulado) (random (length (cdr lista)))))))

;P03
(define (element-at Lista cantidad)
    (cond ((null? Lista) Lista)
      ((zero? cantidad) (car Lista))
      (else (element-at (cdr Lista) (- cantidad 1)))))

;P20
(define (remove-at lista elemento)
    (cond ((null? lista) lista)
          ((zero? elemento) (cdr lista))
          (else (cons (car lista) (remove-at (cdr lista) (- elemento 1))))))
;P24      
;(lotto-select 6 49)
(define (lotto-select cantidad rango)
  (cond ((> cantidad rango) '())
        (else (rnd-select (range 0 rango) cantidad))))




;P09 Pack (pack '(a a a a b c c a a d e e e e))

(define (pack Lista)
    (pack-aux (cdr Lista) (list (car Lista))))

(define (pack-aux lista cabeza)
    (cond ((null? lista) (list cabeza))
          ((equal? (car lista) (car cabeza)) (pack-aux (cdr lista) (cons (car lista) cabeza)))
          (else
           (cons cabeza (pack-aux (cdr lista) (list (car lista)))))))

;P10 (encode '(a a a a b c c a a d e e e e))
;(encode '(1 "a" "a" "b" "b" 4 4 4 4 5 5))
  (define (encode Lista)
    (cond ((null? Lista) Lista))
     (map (lambda (Lista_aux) (list (length Lista_aux) (car Lista_aux))) (pack Lista)))

; Al aplicar map (lambda (Lista_aux) lo estamos haciendo explícito
;Map recibe una función (lambda (Lista_aux) (list (length Lista_aux) (car Lista_aux))) y el parámetro((pack Lista))
;Recordemos que (pack Lista) manda una lista de listas
;(list (length Lista_aux) (car Lista_aux)) Hace una lista con el tamaño y la cabeza


(define (concatenar Lista1 Lista2)
  (cond ((null? Lista1) Lista2))
  (append Lista1 Lista2))