(define  promedio-consumo
 (lambda (lista)
     (letrec ((sumas
           (lambda (x)
                (if (null? x)
                    0
                    (+ (car x) (sumas (cdr x)))))))
   
     (letrec ((promedio
                (lambda (l)
                 (* (/ (sumas l) (length l))1.0))))    
     
     (letrec ((promlistas
                  (lambda (p)
                    (map (lambda (h) (promedio h)) p))))
          
     (letrec ((transforma
                    (lambda (li)
                      (map (lambda (x) (string->number (list->string (cons (car(cdr (string->list x))) (cdr(cdr (string->list x))))))) li))))
            
    (letrec ((transformo
                      (lambda (y)
                        (map (lambda (x) (transforma x)) y))))
              (promedio (promlistas (transformo lista))))))))))

 (promedio-consumo '(("M72" "I65" "X77" "A21") ("M82" "I54") ("A23" "I59" "X73")))