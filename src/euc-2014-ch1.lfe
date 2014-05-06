(defmodule euc-2014-ch1
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "The State of LFE")
      (h3 "Lisp Flavored Erlang")
      (ul
        (list
          (li-frag "You read that right.")
          (li-frag "This was built with a Lisp."))))
    (slide
      (h3 "Did you just say 'Lisp'?"))
    (slide
      (h1 "YES")
      (h2-frag "Distributed Lisp, that is.")
      (h3-frag "It's the language you always wanted,")
      (p-frag "But were too frightened by the power")
      (p-frag (small "To ask for it.")))
    (slide
      (h1 "In a nutshell...")
      (p-frag
         "We've got the world-class distributed-systems programming language -- Erlang")
      (p-frag
         "Running a webserver known for spanking Apache into the Stone Age,")
      (p-frag "Whose application entry point is a function written in Lisp,")
      (p-frag "Which built libraries to generate HTML via S-Expressions,")
      (p-frag "To be manipulated into high-attractiveness by Reveal.js,")
      (p-frag "So that you can make slides ..."))
    (slide
      (h1 "For this guy")
      (h1 "☟")
      (img '(src "/images/pointy.jpg")))
    (slide
      (h1 "80,000"))
    (slide
      (p "(That's how many viewers can load this presentation")
      (p-frag "concurrently")
      (p-frag "without YAWS breaking a sweat.)"))
    (slide
      (p (list "We're not going to let" (em " anyone ")
         "DDOS your deck on the big day.")))))
