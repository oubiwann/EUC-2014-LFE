(defmodule euc-2014-slides
  (export all))

(include-lib "deps/reveal-js/include/macros.lfe")

(defun introduction (arg-data)
  (cover
    (h1 '"LFE-Reveal-JS")
    (h3 (list '"HTML Presentation Made" (em '" Ludicrously ") '"Robust"))
    (p (small '"(and absurdly hip)"))
    (p '"The Exemplar Presentation Framework")))

(defun chapter-1 (arg-data)
  (chapter
    (slide
      (h1 '"LFE")
      (h3 '"Lisp Flavored Erlang")
      (ul
        (list
          (li '(class "fragment") '"You read that right.")
          (li '(class "fragment") '"This was built with a Lisp."))))
    (slide
      (h3 '"Did you just say 'Lisp'?"))
    (slide
      (h1 '"YES")
      (h2 '(class "fragment") '"Distributed Lisp, that is.")
      (h3 '(class "fragment") '"It's the language you always wanted,")
      (p '(class "fragment") '"But were too frightened by the power")
      (p '(class "fragment") (small '"To ask for it.")))
    (slide
      (h1 '"In a nutshell...")
      (p '(class "fragment")
         '"We've got the world-class distributed-systems programming language -- Erlang")
      (p '(class "fragment")
         '"Running a webserver known for spanking Apache into the Stone Age,")
      (p '(class "fragment")
         '"Whose application entry point is a function written in Lisp,")
      (p '(class "fragment")
         '"Which built libraries to generate HTML via S-Expressions,")
      (p '(class "fragment")
         '"To be manipulated into high-attractiveness by Reveal.js,")
      (p '(class "fragment")
         '"So that you can make slides ..."))
    (slide
      (h1 '"For this guy")
      (h1 '"☟")
      (img '(src "/images/pointy.jpg")))
    (slide
      (h1 '"80,000"))
    (slide
      (p '"(That's how many viewers can load this presentation")
      (p '(class "fragment") '"concurrently")
      (p '(class "fragment") '"without YAWS breaking a sweat.)"))
    (slide
      (p (list '"We're not going to let" (em '" anyone ")
         '"DDOS your deck on the big day.")))))

(defun chapter-2 (arg-data)
  (chapter
    (slide
      (h1 '"Powered By")
      (h3 '"Erlang")
      (img '(src "/images/Erlang_logo.png")))
    (slide
      (h1 '"Powered By")
      (h3 '"YAWS")
      (img '(src "/images/yaws_logo.png")))
    (slide
      (h1 '"Powered By")
      (h3 '"Lisp Flavored Erlang")
      (img '(src "/images/LispFlavoredErlang-small-square.png")))
    (slide
      (h1 '"Powered By")
      (h3 '"Exemplar")
      (img '(src "/images/juggernaut-tiny.png"))
      (p '(class "fragment") (small '"Don't you know who I am?")))
    (slide
      (h1 '"Powered By")
      (h3 '"Reveal.js"))))

(defun chapter-3 (arg-data)
  (chapter
    (h1 '"lfe-reveal-js")
    (h3 '"Check it out.")
    (p '"https://github.com/lfe/lfe-reveal-js")))
