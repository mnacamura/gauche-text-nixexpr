;;;
;;; nixexpr.scm - Nix expression constructor for Gauche
;;;

(define-module text.nixexpr
  (export nix:expr))

(select-module text.nixexpr)

;; Double-quote string
(define-method nix:expr ((s <string>))
  #"\"~s\"")

;; Numbers (integer or floating point)
(define-method nix:expr ((n <integer>))
  (number->string n))
(define-method nix:expr ((n <real>))
  (number->string n))
