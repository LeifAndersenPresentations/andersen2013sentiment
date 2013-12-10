#lang slideshow

(require slideshow/play
         slideshow/code
         slideshow/latex
         slideshow/pict
         (for-syntax syntax/stx)
         "slideshow-macros.rkt")

(require "snippits.rkt")

(title-slide
 (large-text "Sentiment Analysis")
 (colorize (medium-text "Leif Andersen") "blue")
 (colorize (medium-text "Ian Briggs") "blue")
 (colorize (t "University of Utah") "red"))

(picture-slide
 #:fade-in #t
 #:fade-out #f
 (massive-text "Architecture")
 (bitmap "congress.jpg")
 (scale (dot "architecture") 1.25))

(play-n
 #:skip-first? #t
 #:skip-last? #t
 (λ (n1 n2)
    (define (scalar s)
      (let ([rs (- 1 s)])
        (+ rs 0.25)))
    (fade-pict n2
               (fade-pict n1
                          (scale (dot "architecture") (scalar n1))
                          (scale (dot "architectureSingle") 0.25))
               (dot "architectureBothInvis"))))

#;(play-n
 #:skip-first? #t
 #:skip-last? #t
 (λ (n1)
    (vl-append
     (scale rand-code 0.1)
     (ct-superimpose
      (dot "concretestop")
      (inset
       (inset/clip
        (dot "concreteloop")
        (- (* 750 n1))
        0 0 0)
       0 0 (- (* 750 n1)) 0))
     (ghost (scale rand-code 0.1)))))

(end-pretty-slide
 (dot "architectureBoth"))

(start-pretty-slide
 (item "Bigrams")
 'next
 (item "Trigrams")
 'next
 (item "POS Sets")
 'next
 (item "POS Sequences")
 'next
 (item "POS Bigrams")
 'next
 (item "First Word")
 'next
 (item "Last Word"))

(X-slide
 #:distance 25
 (item "Bigrams")
 (item "Trigrams")
 (item "POS Sets")
 (item "POS Sequences")
 (item "POS Bigrams")
 (item "First Word")
 (item "Last Word"))

(pretty-slide
 (scale (bitmap "poo.jpg") 1.5))

(pretty->flip-slide
 (massive-text "random()"))

(flip->pretty-slide
 (scale random-snippit 1))

(define ttt medium-text)

(header-slide
 #:header (massive-text "Results:")
 (frame
   (inset
    (table 3
           (list (ttt "")          (ttt "Test Set 1:")  (ttt "Test Set 2:")
                 (ttt "F Score")   (ttt ".30")          (ttt ".29")
                 (ttt "Recall")    (ttt ".26")          (ttt ".24")
                 (ttt "Precision") (ttt ".35")          (ttt ".35"))
           (list* cc-superimpose)  ; left-align first column
                  ; cc-superimpose) ; h-center the rest
           cc-superimpose ; v-center all rows
           40 ; separate all columns by gap-size
           10) ; separate all rows by gap-size
    10)))

(picture-slide
 (colorize (massive-text "WARNING") "red")
 (para "You will be given the answers for Test Set #1, but your system is not allowed to use them to extract opinions!"))

(header-slide
 #:header (massive-text "Cheating Results:")
 (frame
   (inset
    (table 3
           (list (ttt "")          (ttt "Test Set 1:")  (ttt "Test Set 2:")
                 (ttt "F Score")   (ttt ".41")          (ttt ".30")
                 (ttt "Recall")    (ttt ".38")          (ttt ".26")
                 (ttt "Precision") (ttt ".43")          (ttt ".36"))
           (list* cc-superimpose)  ; left-align first column
                  ; cc-superimpose) ; h-center the rest
           cc-superimpose ; v-center all rows
           40 ; separate all columns by gap-size
           10) ; separate all rows by gap-size
    10)))

(header-slide
 #:header (massive-text "Questions?")
 (colorize (large-text "leif@leifandersen.net") "blue")
 (colorize (large-text "ianbriggs@comcast.net") "blue"))

