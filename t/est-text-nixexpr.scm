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

(test-end)
