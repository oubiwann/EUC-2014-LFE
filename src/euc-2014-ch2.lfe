;;;; Chapter content includes:
;;;;  * Why Lisp?
;;;;  * Why in Erlang?
;;;;
(defmodule euc-2014-ch2
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Introduction"))
    (intro-preview)
    (why-lisp)
    (why-erlang)
    ))

(defun intro-preview ()
  (overview-slide
    (h2 "Why Lisp: Preview")
    (quick-ul
      "A Historical Glance"
      "Why not 'Just Erlang'?"
      "The Best of Two Worlds")
    (notes "In this fist section of the talk I'm going to cover some "
           "basics -- a refresher to those familiar with Lisps, or "
           "a gentle crash-course for those who have not encountered Lisp "
           "previously.")))

(defun why-lisp ()
  (list
    (slide
      (h2 "Why Lisp?")
      (img '(src "images/lisp.png"))
      (notes "One of the first questions that is asked of Lisps by programmers "
             "coming from C-style or Python-style languages is \"Why Lisp?\" "))
    (slide
      (h2 "Why Lisp?")
      (p (em "Do we really want to code in something so old?"))
      (img '(src "images/lisp-1.5-sets-example.png"))
      (notes "This is an excerpt of code from the Lisp 1.5 manual, "
             "first published in August, 1962."
             (br)(br)
             "As you can probably discern, this is code is defining set "
             "operations for sets implemented with lists."))
    (slide
      (h2 "Why Lisp?")
      (p "Fortunately, we don't have to.")
      (img '(src "images/lfe-sets-example.png"))
      (notes "To put aside any fears that may have arisen when seeing "
             "that code, I'll give a little spoiler here. This is what "
             "that same code would look like in LFE if we didn't use "
             "the Erlang sets module."
             (br)(br)
             "We've got cons'ing and pattern matching in the function heads, "
             "the Erlang lists module, lower-case letters, and syntax "
             "highlighting ;-)"
             (br)(br)
             "This is not the Lisp of 1962."))
    (slide
      (h2 "Why Lisp?")
      (ul
        (list
          (li (list "A lot has changed since 1958... even for Lisp: it "
                    "now has even " (em "more ") "to offer."))
          (li-frag "It's a programmable programming language.")
          (li-frag "As such, it's an excellent language for exploratory "
                   "programming.")
          (li-frag "Many are drawn to the beauty of the "
                   "near syntaxlessness of the language.")
          (li-frag "Due to it's venerable age, there is an enormous "
                   "corpus of code to draw from.")))
      (notes "Born 3 years after the death of ENIAC, Lisp has been with us from "
             "the dawn of modern computing. Due to the hardships of the AI "
             "Winter, Lisp has weathered some of the greatest social "
             "difficulties a language can withstand. "
             (br)(br)
             "Due to its dead-simple syntax, small number of core forms, "
             "homoiconicity, and macro system, one can accomplish such feats "
             "as writing a compiler in the morning and a DSL in an afternoon."))
    (slide
      (h2 "Why Lisp?")
      (p (list "Most importantly, however, it's because the universe is "
               "cons's all the way down:"))
      (img '(src "images/lisp-xkcd.jpg"))
      (notes "Randall Munroe (the author of xkcd) has had some very nice "
             "things to say about Lisp. In fact, the new LFE front page "
             "quotes xkcd's Lisp Star Wars spoof."))))

(defun why-erlang ()
  (list
    (slide
      (h2 "Why in Erlang?")
      (p-frag "The obvious answer: ")
      (p-frag (em (list "One now has easy access to the same "
                    (strong "idioms ") "that have made Lisp so "
                    (strong "powerful ") "for so long.")))
      ; (notes "It's what you get when you mix the Banarama of languages "
      ;        "with a language that is its own AST."))
      (notes "Okay, you've talked me into playing with Lisp. But in "
            (em "Erlang") "? "))
    (slide
      (h2 "Why in Erlang?")
      (p-frag "A terrifyingly powerful combination:")
      (quick-ol-frag
        "Lisp's homoiconicity and macro system, coupled with "
        "Erlang's fault-tolerant distributed systems capabilities.")
      (p-frag (list (br) "It is the " (em "perfect ") "language lab "
                         "for the multi-core world."))
      (notes "But it's more than just that." (br)(br)
             "It's about what you can do with these two together."))
    (slide
      (h2 "Why in Erlang?")
      (p (em "Couldn't you just have left Erlang well enough alone?"))
      (p-frag "Yes. But Lisp is such a " (em "simple ") " syntax; it was bound "
              "to happen, sooner or later. In fact ...")
      (p-frag "From 2007 to 2008, three major languages/VMs got a Lisp:")
      (quick-ul-frag
        "JVM got Clojure."
        "Haskell got Liskell."
        "Erlang got LFE.")
      (notes "Turns out we weren't the only ones doing it."))
    (slide
      (h2 "Why in Erlang?")
      (ul
        (list
          (p "But there are subtler and more important considerations:")
          (quick-ul-frag
            "Diversity brings new ways of thinking and new discoveries."
            "Increased options for the Erlang VM bring more programmers to the community."
            "Both of these ensure the wider success of the Erlang VM."
            "More people benefit from the excellence that is Erlang.")))
      (notes ""))))

