(use gauche.test)

(test-start "text.nixexpr")
(use text.nixexpr)

(test-module 'text.nixexpr)

(test-section "simple values")

(test* "\"double-quote string\""
       "\"double-quote string\""
       (nix:expr "double-quote string"))

(test* "''single-quote string is not easy in Scheme!''"
       "\"single-quote\n    string is not\n    easy in Scheme!\""
       (nix:expr "\
single-quote
    string is not
    easy in Scheme!\
"))

(test* "\"https://url.should.be/quoted/\""
       "\"https://url.should.be/quoted/\""
       (nix:expr "https://url.should.be/quoted/"))

(test* "integer"
       "1"
       (nix:expr 1))

(test* "integer in Gauche specific notation"
       "10"
       (nix:expr #e1_0))

(test* "floating point"
       "1.4"
       (nix:expr 1.4))

(test* "floating point in scientific notation"
       "1.4e-10"
       (nix:expr 1.4e-10))

(test* "exact real number"
       "0.5"
       (nix:expr 1/2))

(test* "real number in Gauche specific notation"
       "0.105"
       (nix:expr #i1.0_5))

(test-end)
