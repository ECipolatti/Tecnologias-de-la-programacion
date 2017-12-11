(define ListSust
  (letrec ((remp
            (lambda (li1 li2)
              (if (null? li2)
                  '()
                  (if (eqv? (car li1) (car li2))
                      (cons (cdr li1)(remp li1 (cdr li2)))
                      (cons (car li2)(remp li1 (cdr li2)))
                      )))))
    (letrec ((recur
                (lambda (list1 list2)
                  (if (null? list1)
                      list2
                      (let ((tempo(remp(car list1) list2)))
                            (recur (cdr list1) tempo)
                        )))))
      (lambda (l1 l2)
        (if (null? l1)
            '()
            (recur l1 l2)
            )))))
(ListSust '((a . b) (b . c) (c . d)) '(a a a)); ---> (d d d)
(ListSust '((a . b) (c . d)) '(a b c d)); ---> (b b d d)
