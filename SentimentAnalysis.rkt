#lang slideshow

(require slideshow/play
         slideshow/code
         slideshow/latex
         slideshow/pict
         (for-syntax syntax/stx)
         "slideshow-macros.rkt")

(require "snippits.rkt")

(title-slide
 (massive-text "Sentiment Analysis")
 (colorize (large-text "λ-o") "purple")
 (colorize (medium-text "Leif Andersen        Ian Briggs") "blue")
 (colorize (t "University of Utah") "red"))

(picture-slide
 #:title (colorize (medium-text "λf.λx.x") "purple")
 #:fade-in #t
 #:fade-out #f
 (massive-text "Architecture")
 (bitmap "congress.jpg")
 (scale (dot "architecture") 1.25))

(play-n
 #:title (colorize (medium-text "λf.λx.f x") "purple")
 #:skip-first? #t
 (λ (n1 n2)
    (define (scalar s)
      (let ([rs (- 1 s)])
        (+ rs 0.25)))
    (fade-pict n2
               (fade-pict n1
                          (scale (dot "architecture") (scalar n1))
                          (scale (dot "architectureSingle") 0.25))
               (scale (dot "architectureBothInvis") 1.3))))

(play-n
 #:title (colorize (medium-text "λf.λx.f (f x)") "purple")
 #:skip-first? #t
 #:skip-last? #t
 (λ (n1)
    (ct-superimpose
     (scale (dot "architectureBoth") 1.3)
     (inset
      (inset/clip
       (scale (dot "architectureBothInvis") 1.3)
       (- (* 750 n1))
       0 0 0)
      0 0 (- (* 750 n1)) 0))))

(end-pretty-slide
 #:title (colorize (medium-text "λf.λx.f (f (f x))") "purple")
 (scale (dot "architectureBoth") 1.3))

(start-pretty-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f x)))") "purple")
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
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f x))))") "purple")
 #:distance 25
 (item "Bigrams")
 (item "Trigrams")
 (item "POS Sets")
 (item "POS Sequences")
 (item "POS Bigrams")
 (item "First Word")
 (item "Last Word"))

(pretty-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f x)))))") "purple")
 ;(scale (bitmap "poo.jpg") 1.5))
 (scale (bitmap "clippy.jpg") 1.5))

(pretty->flip-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f x))))))") "purple")
 (massive-text "random()"))

(flip->pretty-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f (f x)))))))") "purple")
 (scale random-snippit 1))

(play-n
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f (f (f x))))))))") "purple")
 (λ (n1 n2 n3)
    (scale oh-god 0.7 (- 0.99 (/ n1 4) (/ n2 3) (/ n3 3)))))

(pretty-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f (f (f (f x)))))))))") "purple")
 (scale (tt "15 positive 9-11") 2))

(pretty-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f (f (f (f (f x))))))))))") "purple")
 (massive-text "Emphasis"))

(pretty-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))") "purple")
 (massive-text "Bayesian Classifier"))

(define ttt medium-text)

(header-slide
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))") "purple")
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
 #:title (colorize (medium-text "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))))") "purple")
 (colorize (massive-text "WARNING") "red")
 (scale (para "You will be given the answers for Test Set #1, but your system is not allowed to use them to extract opinions!") 1.2))

(header-slide
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))))") "purple")
 #:header (massive-text "False Results:")
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

(start-pretty-slide
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))))))") "purple")
 (medium-text "This project brought to you by")
 (scale (bitmap "sesame-street.jpg") 1.8))

(play-n
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))))))") "purple")
 #:skip-first? #t
 (λ (n1)
    (vc-append 0
               (medium-text "This project brought to you by")
               (scale (bitmap "sesame-street.jpg") 1.8)
               (scale (large-text "TextBlob") (max 0.001 n1) 1))))

(play-n
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))))))))") "purple")
 #:skip-first? #t
 #:skip-last? #t
 (λ (n1)
    (vc-append 0
               (medium-text "This project brought to you by")
               (scale (bitmap "sesame-street.jpg") 1.8)
               (large-text "TextBlob")
               (scale (large-text "CLiPS Pattern") (max 0.001 n1) 1))))

(end-pretty-slide
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))))))))") "purple")
 (vc-append 0
            (medium-text "This project brought to you by")
            (scale (bitmap "sesame-street.jpg") 1.8)
            (large-text "TextBlob")
            (large-text "CLiPS Pattern")))

(pretty-slide
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))))))))))") "purple")
 (item "Text Blob - POS Tagging, Naive Bayesian Classifier - https://textblob.readthedocs.org/en/latest/")
 (item "CLiPS Pattern - POS Chunker - http://www.clips.ua.ac.be/pattern"))

(pretty-slide
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))))))))))") "purple")
 (large-text "Leif's Contributions")
 (scale (bitmap "leif.jpg") 1.2))

(pretty-slide
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))))))))))))") "purple")
 (item "Slides")
 'next
 (item "Voting System")
 'next
 (item "Build System")
 'next
 (item "Experimentation"))

(pretty-slide
 #:title (colorize (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))))))))))))") "purple")
 (large-text "Ian's Contributions")
 (scale (bitmap "ian.jpg") 1.5))

(pretty-slide
 #:title (colorize (scale (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))))))))))))))") 0.8) "purple")
 (large-text "Ian's Contributions")
 (item "TextBlob")
 'next
 (item "Phrase Chuncker")
 'next
 'alts
 `((,(item "Experimentation"))
   (,(item "Experimentation (that worked)"))))

(pretty-slide
 #:title (colorize (scale (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))))))))))))))") 0.8) "purple")
 (double-massive-text "Regrets"))

(section
 #:title "Regrets"
 (header-slide
  #:header (large-text "We tried a lot of stuff...")
  (massive-text "It failed"))
  ;(bitmap "clippy.jpg"))

 (pretty-slide
  (large-text "Need more input data")))

(pretty-slide
 #:title (colorize (scale (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x)))))))))))))))))))))))))") 0.8) "purple")
 (massive-text "Successes"))

(section
 #:title "Successes"

 (pretty->flip-slide
  (massive-text "High Numbers"))

 (flip-slide
  (double-massive-text "But..."))

 (flip->pretty-slide
  (bitmap "football-punt1.png"))

 (pretty-slide
  (large-text "100% Correct File")))

(pretty-slide
 #:title (colorize (scale (t "λf.λx.f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f (f x))))))))))))))))))))))))))") 0.8) "purple")
 (massive-text "Lessons Learned"))

(section
 #:title "Lessons Learned"

 (pretty-slide
  (medium-text "NLP is an open research problem"))

 (header-slide
  #:header (large-text "Initial results are easy")
  (large-text "Improving them is hard")))

(header-slide
 #:title (colorize (large-text "λ") "purple")
 #:header (massive-text "Questions?")
 (colorize (large-text "leif@leifandersen.net") "blue")
 (colorize (large-text "ianbriggs@comcast.net") "blue"))

