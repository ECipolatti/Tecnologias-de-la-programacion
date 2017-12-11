(define reemp
  (lambda (l1 l2)
    (cond ((null? l2) (list))
          ((eqv? (car l1) (car l2)) (cons (cdr l1) (cdr l2)))
          (else (reemp l1 (cdr l2))))))

;(reemp '(a . b) '(a a))

(define Re
  (lambda (p e)
    (cond ((eqv? (car p) e) (cdr p))
          (else e))))

(define SustList
  (lambda (l1 l2)
    (cond ((null? l1) (list))
          (else (map Re l1 l2)))))


;(SustList '((a . b) (c . d) (e . f)) '(a b c ))


(define Sust
  (lambda (l1 l2)
    (letrec ((reemplazar1 
              (lambda  (e)
                (cond ((null? l1) e)
                      ((eqv? (caar l1) e) (cdar l1))
                      (else (reemplazar2 (cdr l1) e)))))
             (reemplazar2
              (lambda (l1 e)
                (cond ((null? l1) e)
                      ((eqv? (caar l1) e) (cdar l1))
                      (else (reemplazar2 (cdr l1 ) e))))))
      (map reemplazar1 l2))))


;(Sust '((a . b) (c . d) (e . f)) '(a b c d e f g h a b c d ))

(define sumaraux
  (lambda (l n)
    (if (null? l) 
        0
        (if (even? (car l))
            (+ (* (car l) n) (sumaraux (cdr l)(+ n 2)))
            (sumaraux (cdr l) n)
        ))))

(define sumarpar
  (lambda(l)
    (if (null? l) 0
        (sumaraux l 0))))
;(sumarpar '(7 2 5 4))

(define primeros
  (lambda (x l1)
    (if (null? l1)
        '()
        (if (eqv? x (car l1))
            '()
            (cons (car l1) (primeros x (cdr l1)))
            ))))
    
(define ultimos
  (lambda (x l1)
    (if (null? l1)
        l1
        (if (eqv? (car l1) x)
            (cdr l1)
            (ultimos x (cdr l1)))
  ))      )
  
(define dividir-list
  (lambda (x l1)
    (cons (primeros x l1) (list(ultimos x l1))
    ))      )
    
  
(define conver1
  (lambda (re)
    (let ((tempo (read re)))
     (if (eof-object? tempo)
      '()
        (cons tempo (conver re))
    ))))

(define conver
  (lambda (re)
    (let ((tempo (read-line re)))
    (string->list tempo)
    )))

(define maux
  (lambda (l1 l2)
    (cond ((null? l1) l1)
          (else(cons(* (string->number(list->string(list(car l1)))) (string->number(list->string(list(car l2))))) (maux (cdr l1) (cdr l2)))))))

(define multi
  (lambda (l)
    (if (null? l) 
        0
        (maux (car(dividir-list #\space l))(car(cdr(dividir-list #\space l)))))))


(multi(conver (open-input-string (read-line))))


;(dividir-list  7 '(1 4 3 5 7 4 2 4 6))
            



