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
          (li-frag "As such, it's an excellent language for exploratory "
                   "programming.")
          (li-frag "Many are drawn to the beauty of the "
                   "near syntaxlessness of the language.")
          (li-frag "Due to it's venerable age, there is an enormous "
                   "corpus of code to draw from.")))
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
      (img '(src "images/lisp-xkcd.jpg")))))

(defun why-erlang ()
  (list
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
          (quick-ul-frag
            "Diversity brings new ways of thinking and new discoveries."
            "Increased options for the Erlang VM bring more programmers to the community."
            "Both of these ensure the wider success of the Erlang VM."
            "More people benefit from the excellence that is Erlang.")))
      (notes ""))))

