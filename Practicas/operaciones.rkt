#lang racket

(define (sumar)
  (+ (get-number) (get-number)))

(define (restar)
  (- (get-number) (get-number)))

(define (multiplicar)
  (* (get-number) (get-number)))

(define (dividir)
  (/ (get-number) (get-number)))

(define (get-number)
  (display "Ingrese un número: ")
  (string->number(read-line(current-input-port) 'any)))