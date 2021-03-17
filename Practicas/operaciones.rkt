#lang racket
;Manera de sumar dos valores reales
(define (sumar)
  (+ (get-number) (get-number)))
;Manera de restar dos valores reales
(define (restar)
  (- (get-number) (get-number)))
;Manera de multiplicar dos valores reales
(define (multiplicar)
  (* (get-number) (get-number)))
;Manera de dividir dos valores reales
(define (dividir)
  (/ (get-number) (get-number)))

(define (get-number)
  (display "Ingrese un numero: ")
  (string->number(read-line (current-input-port) 'any)))