;;;; Chapter content includes:
;;;;  * Wrap-up
;;;;
(defmodule euc-2014-ch7
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h2 "Wrap Up")
      (h3 "Topics Covered")
      (quick-ul
        "Introduction"
        "New Developments"
        "A Tour of LFE"
        "Special Projects"
        "Language Interop")
      (notes ""))
    (slide
      (h2 "Wrap Up")
      (h3 "Highlights")
      (quick-ul-frag
        "LFE gives us the power of a Lisp language lab."
        (list "Erlang gives us the power of a means for building "
              "reliable, distributed systems.")
        (list "With just these two, unimagined new possibilies are at our "
              "fingertips.")
        "But it goes beyond that.")
      (notes ""))
    (slide
      (h2 "Wrap Up")
      (h3 "Highlights")
      (quick-ul-frag
        "We have access to all the other works in the BEAM community."
        "We can easily (mostly) translate decades of Lisp code to LFE."
        (list "We have multilpe ways of working with the endless options "
              "provided by the JVM world.")
        "All of this from the best Actor model language on the market :-)")
      (notes ""))
    (slide
      (h2 "Wrap Up")
      (h3 "The power is mind-blowing."))
    (slide
      (h2 "Wrap Up")
      (img '(src "images/Voltaire_by_Jean-Antoine_Houdon_(1778)-small.jpg"
             style "float: right;"))
      (blockquote (list "Un grand pouvoir implique une grande "
                        "responsabilité" (br)
                        (em "- François-Marie Arouet (Voltaire)")))

      (div '(style "text-align: left;")
        (list
      (p-frag (list "Computing has its beginnings in the darkness of "
                    (br) "war:"))
      (p-frag "ENIAC was built with the purpose of calculating artillery trajectories.")
      (p-frag "After von Neumann's involvement, it was used on the Manhattan Project.")))
      (notes ""))
    (slide
      (h2 "Wrap Up")
      (img '(src "images/Voltaire_by_Jean-Antoine_Houdon_(1778)-small.jpg"
             style "float: right;"))
      (blockquote (list "Un grand pouvoir implique une grande "
                        "responsabilité" (br)
                        (em "- François-Marie Arouet (Voltaire)")))

      (div '(style "text-align: left;")
        (list
      (p-frag "In contrast, Lisp was created to explore intelligence.")
      (p-frag "Erlang was created in a playful manner to explore reliable systems.")
      (p-frag "LFE was created in this same playful spirit upheld at Ericsson's CSL.")))
      (notes ""))
    (slide
      (h2 "Wrap Up")
      (img '(src "images/Voltaire_by_Jean-Antoine_Houdon_(1778)-small.jpg"
             style "float: right;"))
      (blockquote (list "Un grand pouvoir implique une grande "
                        "responsabilité" (br)
                        (em "- François-Marie Arouet (Voltaire)")))

      (div '(style "text-align: left;")
        (list
      (p-frag "As socially responsible hackers, we need to remember the power of our tools.")
      (p-frag "It's easy to forget in the excitement of the moment.")
      (p-frag "Or in the frustrated boredom of a job.")))
      (notes ""))
    ))

