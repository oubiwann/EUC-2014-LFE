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
      (notes "Here's what we've covered."))
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
      (notes "And here's why we might want to use LFE."))
    (slide
      (h2 "Wrap Up")
      (h3 "Highlights")
      (quick-ul-frag
        "We have access to all the other works in the BEAM community."
        "We can easily (mostly) translate decades of Lisp code to LFE."
        (list "We have multiple ways of working with the endless options "
              "provided by the JVM world.")
        "All of this from the best Actor model language on the market :-)")
      (notes ""))
    (slide
      (h2 "Wrap Up")
      (h3 "The power is mind-blowing."))
    (slide
      (h2 "Wrap Up")
      (img '(src "images/FDR_in_1933-small.jpeg"
             style "float: right;"))
      (blockquote (list "...Great power involves great responsibility." (br)
                        (em "- Franklin D. Roosevelt")))

      (div '(style "text-align: left;")
        (list
      (p-frag (list "Computing has its beginnings in the darkness of "
                    (br) "war:"))
      (p-frag "ENIAC was built with the purpose of calculating artillery trajectories.")
      (p-frag "After von Neumann's involvement, it was used on the Manhattan Project.")))
      (notes ""
             (br)(br)
             "Franklin D. Roosevelt's undelivered Address Prepared for "
             "Jefferson Day April 13, 1945."))

    (slide
      (h2 "Wrap Up")
      (img '(src "images/spiderman-quote.jpg"
             style "float: right;"))
      (blockquote (list "... With great power there must also come -- great responsibility!" (br)
                        (em "- Amazing Fantasy #15")))

      (div '(style "text-align: left;")
        (list
      (p-frag "In contrast to that heaviness, Lisp was created to explore intelligence.")
      (p-frag "Erlang was created in a playful manner to explore reliable systems (train sets!).")
      (p-frag "LFE was created in the same, playful spirit upheld at Ericsson's CSL.")))
      (notes "This quote appeared in the 1962 issue of Amazing Fantasy #15, Spider Man."
             (br) (br)
             "Apparently the phrase was used earlier in the super-hero genre with a "
             "lecture of Pa Kent to young Clark, in the 1948 Superman serial."))

    (slide
      (h2 "Wrap Up")
      (img '(src "images/Voltaire_by_Jean-Antoine_Houdon_(1778)-small.jpg"
             style "float: right;"))
      (blockquote (list "Un grand pouvoir implique une grande responsabilité"
                        (br)
                        (em "- François-Marie Arouet (Voltaire)?")))

      (div '(style "text-align: left;")
        (list
      (p-frag "As socially responsible hackers, we need to remember the power of our tools.")
      (p-frag "It's easy to forget in the excitement of the moment.")
      (p-frag "Or in the frustrated boredom of a job.")))
      (notes "I could find no evidence of this. I searched Volume 48 where this "
             "quote is supposed to come from, and found no trace of it. "
             "Others have commented to this same issue, when attempting to "
             "confirm this attribution."))
    (slide
      (h2 "Wrap Up")
      (img '(src "images/Sosthene_Ier_de_La_Rochefoucauld_(1785-1864)-small.jpg"
             style "float: right;"))
      (blockquote (list "Le plus digne du pouvoir est celui qui en connaît la responsabilité."
                        (br)
                        (em "- Louis François Sosthène de La Rochefoucauld-Doudeauville")))

      (div '(style "text-align: left;")
        (list
      (p-frag "We've got OTP " (em "and") " Lisp macros ...")
      (p-frag "Screw surveillance and digital bombs.")
      (p-frag "Let's make mind-blowing software that " (em "helps") " people.")))
      (notes "The CENTRE FOR THE LAW OF EU EXTERNAL RELATIONS published a "
             "paper that referenced the quote as Voltaire's but also said "
             "they were unable to verify. They did present another potential "
             "source, though: Livre des pensées, Paris, 1835, p. 121."
             (br) (br)
             "Most worthy of power is one that knows the responsibility."))

    (slide
      (h2 "Wrap Up")
      (img '(src "images/Sosthene_Ier_de_La_Rochefoucauld_(1785-1864)-small.jpg"
             style "float: left;"))
       (p
        (list (list
          "\"I think we should " (strong "care") " because we write programs "
          "for the " (strong "whole population") ", and we should have a fair representation of that "
          "population creating [these programs]. "
          (strong "The technology we produce shapes our world and our future ")
          ", and we want it to be shaped in a way that "
          "reflects the interests of all, not just an empowered few.\"")
       (br)
       (em "- Katie Miller, EUC 2014")))
      (notes "Finally, in the spirit of using our powers of mind for good, "
             "I'd like to "
             "quote the brilliant Katie Miller from her keynote yesterday. "
             "This view is perfectly stated and is a wonderful example of "
             "the high standard to which we need to hold ourselves."))
    ))
