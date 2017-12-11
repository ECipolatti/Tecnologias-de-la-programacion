(define listapar(lambda (l)(if(null? l)
                             l
                             (if(even? (car l))
                                (cons (car l) (listapar(cdr l)))
                                (listapar(cdr l))))))

(define res(lambda(l)(if (null? (cdr l))
                        0
                        (+ (* (car l) (car(cdr l))) (res(cdr l))))))



(define sumapar(lambda(x)(res(listapar x))))




(define alist(lambda(x)(let ((l (string->list(number->string x))))
                         (map (lambda(x)(- (char->integer x) 48)) l))))
                                   
                                    
                                   

(define leer(lambda()( let ((n1 (read)) (n2 (read)))
                         (map + (alist n1) (alist n2))
                         )))