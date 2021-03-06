(define (split outer inner)
  (define (newsplit painter n)
    (if (= n 0)
      painter
      (let ((smaller (newsplit painter (- n 1))))
        (outer painter (inner smaller smaller)))))
  newsplit)

(define right-split (split beside below))
(define up-split (split below beside))
