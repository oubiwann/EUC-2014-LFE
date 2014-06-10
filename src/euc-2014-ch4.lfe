;;;; Chapter content includes:
;;;;  * Quick intro to LFE
;;;;  * Data Types
;;;;  * Erlang idioms in LFE
;;;;  * Sample code
;;;;
(defmodule euc-2014-ch4
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Quick Tour of LFE"))
    (quick-tour-preview)
    (intro)
    (data-types)
    (idiom-translation)
    (sample-code)))

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
           "basics -- a gentle crash-course.")))

(defun intro ()
  (list
    (slide
      (h2 "Lisp Flavored Erlang")
      (h3-frag (em "Who wants a cup?"))
      (img '(src "images/LispFlavoredErlang-small-square.png")))
    (slide
      (h3 "Beginnings")
      (p-frag "LFE was born on Robert Virding's Dell XPS in 2007.")
      (p-frag "Initially released in March of 2008.")
      (p-frag "The intent was to modify the Lisp to suit the Erlang VM.")
      (notes "LFE's origins are humble. But in the best sense of the word :-)"))
    (slide
      (h3 "Motivation")
      (quick-ul-frag
        "Was curious see how a Lisp would run on and integrate with Erlang."
        (list "Wanted to explore generating Core Erlang, plugging it into the "
        "backend of the Erlang compiler.")
        "Likes implementing languages."
        (list "Thought it would be a fun problem to solve, as a solution "
              "would be comprised of many different parts and the"
              "problem space was quite open-ended."))
      (notes "You may wonder what caused Robert to do such a thing."
             "This same question occurred to me ... so I asked him. "
             "Here's what he shared: "))
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
          (li-frag "Seamless interoperability with Erlang/OTP."))))))

(defun data-types ()
  (list
    (overview-slide
      (h2 "Data Types")
      (notes "You've now got the backstory. Let's see what it looks like."))
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
      > (integer_to_list (+ #b1001 #b100 #b10) 2)
      \"1111\"
      > (div 11 2)
      5
      > (rem 11 2)
      1
      ")
      (notes "Here are some basic operations on numbers. Note the way in "
             "which different bases are specified."))
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
      ")
      (notes "Atoms are preceeded by a single quote or are wraped in pipes."))
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
      ")
      (notes "Example list usage."))
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
      > (element 2 data)
      \"5 to 1 against\"
      ")
      (notes "Example tuple usage."))
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
      (notes "Here's how you define a record, create a record, access "
             "some data and update it."))
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
      ")
      (notes "Here is the new map syntax."))
    (slide
      (h3 "Data Types")
      (h4 "Maps")
      (p "Bonus: Common Lisp-based Map Macros")
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
      ")
      (notes "Experimental Common Lisp forms for maps."))))

(defun idiom-translation ()
  (list
    (overview-slide
      (h2 "Erlang Idioms in LFE")
      (notes "Comparing LFE and Erlang directly is something I've "
             "been asked to do by new-comers to LFE. More than once "
             "I've heard comments to the effect that this would have "
             "made learning LFE trivial."
             (br)(br)
             "Here's a first taste ..."))
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
      right_number(X) when X == 42; X == 276709 ->
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
      (h4 "Matching Records in Function Heads")
      (p "Erlang")
      (erlang-code "
  handle_info(ping, #state {remote_pid = undefined} = S) ->
      gen_server:cast(self(), ping),
      {noreply, S};
  handle_info(ping, S) ->
      {noreply, S};
      ")
      (p "LFE")
      (lisp-code "
  (defun handle_info
    (('ping (= (match-state remote-pid 'undefined) state))
      (gen_server:cast (self) 'ping)
      `#(noreply ,state))
    (('ping state)
     `#(noreply ,state)))
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
      (notes ""))))

(defun sample-code ()
  (list
    (overview-slide
      (h2 "Sample Code")
      (notes "Next up, we have some samples that may give you a better "
             "sense of what LFE can look like."))
    (slide
      (h3 "Sample Code")
      (h4 "Dot Product Function")
      (lisp-code "
      (defun dot-product (a b)
        (lists:foldl #'+/2 0
          (lists:zipwith #'*/2 a b)))
      ")
      (notes ""))
    (slide
      (h3 "Sample Code")
      (h4 "Tail-Recursive Factorial Function")
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
      (h4 "Partial Function Application in the REPL")
      (lisp-code "
      > (defun partial (f arg)
          (lambda (x)
            (apply f
              (list arg x))))
      partial
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
      (h4 "Ring Benchmark Module")
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
      (h4 "Ring Benchmark Module (cont'd)")
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
      (notes "At the risk of leaving dear Mr. Baggins with questions "
             "unanswered, and with our whirl-wind tour of LFE behind us, "
             "we can now highlight some of the interesting work "
             "currently going on in the LFE community."))))
