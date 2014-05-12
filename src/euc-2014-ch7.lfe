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
        "But it goes beyond that."
        "We have access to all the other works in the BEAM community."
        (list "We have multilpe ways of working with the endless options "
              "provided by the JVM world.")
        "All of this from the best Actor model language on the market :-)")
      (notes ""))
    (slide
      (h2 "Wrap Up")
      (h3 "The power is mind-blowing."))
    (slide
      (h2 "Wrap Up")
      (img '(src "images/Voltaire_by_Jean-Antoine_Houdon_(1778).jpg"))
      (blockquote (list "Un grand pouvoir implique une grande "
                        "responsabilité" (br)
                        (em "- François-Marie Arouet (Voltaire)")))

      (p (list "As socially responsible hackers, we need to remember the "
               "power of what we do."))
      (p-frag "It's easy to forget.")
      (notes ""))
    ))

