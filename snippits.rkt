#lang slideshow

(require slideshow/play
         slideshow/code
         slideshow/latex
         slideshow/pict
         (for-syntax syntax/stx)
         "slideshow-macros.rkt")

(provide (all-defined-out))

(define random-snippit
  (scode "
def dumb_classifier(wanted_phrases,
                    unwanted_phrases):
    class dc():
        def classify(self, text):
            return randint(0,10)==1
    return dc()"))
