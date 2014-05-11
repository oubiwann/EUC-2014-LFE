(defmodule euc-2014-ch2
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Introduction"))
    (why-lisp-preview)
    (why-lisp)
    (quick-tour-preview)
    (quick-tour)))

(defun why-lisp-preview ()
  (overview-slide
    (h2 "Why Lisp: Preview")
    (ul
      (list
        (li "A Historical Glance")
        (li "The Best of Two Worlds")
        (li "Why not 'Just Erlang'?")))
    (notes "In this fist section of the talk I'm going to cover some "
           "basics -- a refresher to those familiar with Lisps, or "
           "a gentle crash-course for those who have not encountered Lisp "
           "previously.")))

(defun why-lisp ()
  (list
    (slide
      (h2 "Why Lisp?")
      (img '(src "images/lisp.png")))
    (slide
      (h2 "Why Lisp?")
      (p (em "Do we really want to code in something so old?"))
      (img '(src "images/lisp-1.5-sets-example.png"))
      (notes "This is an excerpt of code from the Lisp 1.5 manual, "
             "first published in August, 1962."))
    (slide
      (h2 "Why Lisp?")
      (p "Fortunately, we don't have to.")
      (img '(src "images/lfe-sets-example.png"))
      (notes "To put aside any fears that may have arisen when seeing "
             "that code, I'll give a little spoiler here. This is what "
             "that same code would look like in LFE if we didn't use "
             "any of the Erlang sets module."))
    (slide
      (h2 "Why Lisp?")
      (ul
        (list
          (li (list "A lot has changed since 1958... even for Lisp: it "
                    "now has even " (em "more ") "to offer."))
          (li-frag "It's a programmable programming language.")
          (li-frag "It's an excellent language for exploratory programming.")
          (li-frag (list "Many are drawn to the beauty of the "
                   "near syntaxlessness of the language."))
          (li-frag (list "Due to it's venerable age, there is an enormous "
                         "corpus of code to draw from."))))
      (notes "Born 3 years after the death of ENIAC, it's been with us from "
             "the start. Thanks to the AI Winter, Lisp has weathered some of "
             "the greatest social difficulties a language can withstand. "
             (br)(br)
             "Due to its dead-simple syntax, small number of core forms "
             "homoiconicity, and macro system, one can write a compiler in "
             "the morning and a DSL in an afternoon."))
    (slide
      (h2 "Why Lisp?")
      (p (list "Most importantly, however, it's because the universe is "
               "cons's all the way down:"))
      (img '(src "images/lisp-xkcd.jpg")))
    (slide
      (h2 "Why in Erlang?")
      (ul
        (list
          (p-frag "The obvious answer: ")
          (p-frag (em (list "One now has easy access to the same "
                        (strong "idioms ") "that have made Lisp so "
                        (strong "powerful ") "for so long.")))))
      (notes "It's what you get when you mix the Banarama of languages "
             "with a language that is its own AST."))
    (slide
      (h2 "Why in Erlang?")
      (ul
        (list
          (p-frag "A terrifyingly powerful combination:")
          (ol
            (list
              (li-frag "Lisp's homoiconicity and macro system, coupled with ")
              (li-frag (list "Erlang's fault-tolerant distributed "
                             "systems capabilities."))))
          (p-frag (list (br) "It is the " (em "perfect ") "language lab "
                        "for the multi-core world."))))
      (notes "But it's more than just that." (br)(br)
             "It's about what you can do with these two together."))

    (slide
      (h2 "Why in Erlang?")
      (ul
        (list
          (p (em "Couldn't you just have left Erlang well enough alone?"))
          (p-frag "Yes. But look, Lisp is such a simple syntax; it was bound "
                  "to happen, sooner or later. In fact ...")
          (p-frag "From 2007 to 2008, three major languages/VMs got a Lisp:")
          (ul
            (list
              (li-frag "JVM got Clojure.")
              (li-frag "Haskell got Liskell.")
              (li-frag "Erlang got LFE.")))))
      (notes ""))
    (slide
      (h2 "Why in Erlang?")
      (ul
        (list
          (p "But there are subtler and more important considerations:")
          (ul
            (list
              (li-frag "Diversity brings new ways of thinking and new "
                       "discoveriues.")
              (li-frag "Increased options for the Erlang VM bring more "
                       "programmers to the community.")
              (li-frag "These both help ensure the wider success of the "
                       "Erlang VM.")
              (li-frag "More people benefit from the excellence that is "
                       "Erlang.")))))
      (notes ""))
    ))

(defun quick-tour-preview ()
  (overview-slide
    (h2 "Quick Tour of LFE: Preview")
      (ul
        (list
          (li "Origins of LFE")
          (li "LFE Basics")
          (li "Data Types")
          (li "Erlang Idioms in LFE")
          (li "Sample Code")))
    (notes "In this fist section of the talk I'm going to cover some "
           "basics -- a refresher to those familiar with Lisps, or "
           "a gentle crash-course for those who have not encountered Lisp "
           "previously.")))

(defun quick-tour ()
  (list
    (slide
      (h2 "Lisp Flavored Erlang")
      (h3-frag (em "Who wants a cup?"))
      (img '(src "images/LispFlavoredErlang-small-square.png")))
    (slide
      (h3 "Beginnings")
      (p-frag "Erlang was born on Robert Virding's Dell XPS in 2008.")
      (p-frag "As an old-skool Lisper, he thought it would be fun doing a "
              "Lisp on the Erlang VM.")
      (p-frag "The intent was to modify the Lisp to suit the Erlang VM."))
    (slide
      (h3 "LFE Basics")
      (p "LFE is built on Core Erlang and supports the usual good stuff:")
      (ul
        (list
          (li-frag "No mutable data.")
          (li-frag "Pattern matching and guards.")
          (li-frag "Same types as Erlang.")
          (li-frag "Erlang modules and functions.")
          (li-frag "Compiler, interpreter, and REPL.")
          (li-frag "Seamless interoperability with Erlang/OTP."))))
    (slide
      (h3 "Data Types")
      (h4 "Numbers")
      (lisp-code "
      > (* 2 (+ 1 2 3 4 5 6))
      42
      > (/ 36 7)
      5.142857142857143
      > (+ #b101010 #o52 #x2a #36r16)
      168
      > (: erlang integer_to_list (+ #b1001 #b100 #b10) 2)
      \"1111\"
      > (div 11 2)
      5
      > (rem 11 2)
      1
      "))
    (slide
      (h3 "Data Types")
      (h4 "Atoms and Strings")
      (lisp-code "
      > 'Vogon
      Vogon
      > '|and now with hyperspace bypasses|
      |and now with hyperspace bypasses|
      > \"Don't Panic.\"
      \"Don't Panic.\"
      > (list 68 111 110 39 116 32 80 97 110 105 99 46)
      \"Don't Panic.\"
      "))
    (slide
      (h3 "Data Types")
      (h4 "Lists")
      (lisp-code "
      > (list 1 3 9 27)
      (1 3 9 27)
      > (length '(1 2 3 4 5 6 7))
      7
      > (lists:append '(1 2) '(3 4))
      (1 2 3 4)
      > (car '(1 2 3 4 5 6))
      1
      > (cdr '(1 2 3 4 5 6))
      (2 3 4 5 6)
      > (cadr '(1 2 3 4 5 6))
      2
      > (cddr '(1 2 3 4 5 6))
      (3 4 5 6)
      > (cons '(1 2 3) '(4 5 6))
      ((1 2 3) 4 5 6)
      "))
    (slide
      (h3 "Data Types")
      (h4 "Tuples")
      (lisp-code "
      > (tuple)
      #()
      > (set data (tuple 'odds \"5 to 1 against\"))
      #(odds \"5 to 1 against\")
      > (tuple_size data)
      2
      "))
    (slide
      (h3 "Data Types")
      (h4 "Records")
      (lisp-code "
      > (defrecord person
          name
          address
          age)
      ()
      > (set ford
          (make-person name \"Ford Prefect\"
                       address \"Betelgeuse Seven\"
                       age 234))
      #(person \"Ford Prefect\" \"Betelgeuse Seven\" 234)
      > (person-name ford)
      \"Ford Prefect\"
      > (set ford
          (set-person-age ford 244))
      #(person \"Ford Prefect\" \"Betelgeuse Seven\" 244)
      > (person-age ford)
      244
      ")
      (notes ""))
    (slide
      (h3 "Data Types")
      (h4 "Maps")
      (lisp-code "
      > (set data (map 'ship \"Heart of Gold\"
                       'hitchhiker \"Arthur Dent\"))
      #M(hitchhiker \"Arthur Dent\"
         ship \"Heart of Gold\")
      > (set data (set-map data 'captain \"Zaphod\"))
      #M(captain \"Zaphod\"
         hitchhiker \"Arthur Dent\"
         ship \"Heart of Gold\")
      > (set data (update-map data 'hitchhiker \"Ford Prefect\"))
      #M(captain \"Zaphod\"
         hitchhiker \"Ford Prefect\"
         ship \"Heart of Gold\")
      "))
    (slide
      (h3 "Data Types")
      (h4 "Maps")
      (p "Bonus: Common Lisp-based Syntax")
      (lisp-code "
      > (mref 'ship data)
      \"Heart of Gold\"
      > (set data (mupd 'ship \"Golgafrinchan Ark Fleet Ship B\"
                        'captain \"Captain\"
                        data))
      #M(captain \"Captain\"
         hitchhiker \"Arthur Dent\"
         ship \"Golgafrinchan Ark Fleet Ship B\")
      > (set data (mset 'art-director \"Mella\" data))
      #M(art-director \"Mella\"
         captain \"Captain\"
         hitchhiker \"Arthur Dent\"
         ship \"Golgafrinchan Ark Fleet Ship B\")
      "))
    (slide
      (h3 "Erlang Idioms in LFE")
      (h4 "Pattern Matching")
      (p "Erlang")
      (erlang-code "
      1> {Len,Status,Msg} = {8,ok,\"Trillian\"}.
      {8,ok,\"Trillian\"}
      2> Msg.
      \"Trillian\"
      ")
      (p "LFE")
      (lisp-code "
      > (set (tuple len status msg) #(8 ok \"Trillian\"))
      #(8 ok \"Trillian\")
      > msg
      \"Trillian\"
      ")
      (notes ""))
    (slide
      (h3 "Erlang Idioms in LFE")
      (h4 "List Comprehensions")
      (p "Erlang")
      (erlang-code "
      1> trunc(math:pow(3,X)) || X <- [0,1,2,3]].
      [1,3,9,27]
      ")
      (p "LFE")
      (lisp-code "
      > (list-comp
          ((<- x '(0 1 2 3)))
          (trunc (math:pow 3 x)))
      (1 3 9 27)
      ")
      (lisp-code "
      > (lists:map
          (lambda (x) (trunc (math:pow 3 x)))
          '(0 1 2 3))
      (1 3 9 27)
      ")
      (notes ""))
    (slide
      (h3 "Erlang Idioms in LFE")
      (h4 "Guards")
      (p "Erlang")
      (erlang-code "
      right_number(X) when X == 42, X == 276709 ->
      true;
      right_number(_) ->
      false.
      ")
      (p "LFE")
      (lisp-code "
      (defun right-number?
        ((x) (when (orelse (== x 42) (== x 276709)))
          'true)
        ((_) 'false))
      ")
      (notes ""))
    (slide
      (h3 "Erlang Idioms in LFE")
      (h4 "cons'ing in Function Heads")
      (p "Erlang")
      (erlang-code "
      sum(L) -> sum(L,0).
      sum([], Total) -> Total;
      sum([H|T], Total) -> sum(T, H+Total).
      ")
      (p "LFE")
      (lisp-code "
      (defun sum (l) (sum l 0))
      (defun sum
        (('() total) total)
        (((cons h t) total) (sum t (+ h total))))
      ")
      (notes ""))
    (slide
      (h3 "Erlang Idioms in LFE")
      (h4 "Receiving Messages")
      (p "Erlang")
      (erlang-code "
      universal_server() ->
          receive
              {become, Func} ->
                  Func()
          end.
      ")
      (p "LFE")
      (lisp-code "
      (defun universal-server ()
        (receive
          ((tuple 'become func)
           (funcall func))))
      ")
      (notes ""))
    (slide
      (h3 "Sample Code")
      (h4 "Dot Product")
      (lisp-code "
      (defun dot-product (a b)
        (lists:foldl #'+/2 0
          (lists:zipwith #'*/2 a b)))
      ")
      (notes ""))
    (slide
      (h3 "Sample Code")
      (h4 "Tail-Recursive Factorial")
      (lisp-code "
      (defun factorial (n)
        (factorial n 1))

      (defun factorial
        ((0 acc) acc)
        ((n acc) (when (> n 0))
          (factorial (- n 1) (* n acc))))
      ")
      (notes ""))
    (slide
      (h3 "Sample Code")
      (h4 "Partial Function Application")
      (lisp-code "
      > (defun partial (f arg)
          (lambda (x)
            (apply f
              (list arg x))))
      curry
      > (set applied (partial #'+/2 10))
      #Fun&lt;lfe_eval.14.16114431&gt;
      > (funcall applied 10)
      20
      > (funcall applied 100)
      110
      > (funcall applied -20)
      -10
      ")
      (notes ""))
    (slide
      (h3 "Sample Code")
      (h4 "Ring Benchmark")
      (lisp-code "
      (defmodule ring
        (export
          (main 1)
          (roundtrip 2)))

      (defun main (args)
        (apply
          #'start-ring/2
          (lists:map #'list_to_integer/1 args)))

      (defun start-ring (process-count traversal-count)
        (let ((batch (make-processes process-count
                                     traversal-count)))
          (! batch traversal-count)
          (roundtrip 1 batch)))
      ")
      (notes ""))
    (slide
      (h3 "Sample Code")
      (h4 "Ring Benchmark (cont'd)")
      (lisp-code "
      (defun make-processes (process-count traversal-count)
        (lists:foldl
          #'make-process/2
          (self)
          (lists:seq process-count 2 -1)))

      (defun make-process (id pid)
        (spawn 'ring 'roundtrip (list id pid)))

      (defun roundtrip (id pid)
        (receive
          (1
            (io:fwrite \"Result: ~b~n\" (list id))
            (erlang:halt))
          (data
            (! pid (- data 1))
            (roundtrip id pid))))
      ")
      (notes ""))
    (slide
      (img '(src "images/Gandalf-and-Bilbo-large-LFE.jpg"))
      (notes ""))
    ))
