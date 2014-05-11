(defmodule euc-2014-ch9
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "References")
      (h3 "Projects")
      (quick-ul
        (a '(href "https://github.com/correl/calrissian")
                  "Monads for LFE")
        (a '(href "https://github.com/rabbitmq/erlando")
                  "erlando")
        (a '(href "https://github.com/lfe/lfe-reveal-js")
                  "Building presentations with LFE, YAWS, and Reveal.js")
        (a '(href "https://github.com/lfe/lfetool")
                  "lfetool")
        (a '(href "https://github.com/lfe/exemplar")
                  "HTML as S-expressions")))
    (slide
      (h1 "References")
      (h3 "Projects")
      (quick-ul
        (a '(href "https://github.com/lfe/lfe-elli-example")
                  "LFE with the elli Web Framework")
        (a '(href "https://github.com/knutin/elli")
                  "The elli Web Framework")
        (a '(href "https://github.com/klacke/yaws")
                  "YAWS")
        (a '(href "https://github.com/lfe/yaws-rest-starter")
                  "YAWS & LFE for RESTful services")))
    (slide
      (h1 "References")
      (h3 "Projects")
      (quick-ul
        (a '(href "https://github.com/trifork/erjang")
                  "Erjang")
        (a '(href "https://github.com/lfe/jlfe")
                  "jlfe")
        (a '(href "")
                  "")
        (a '(href "")
                  "")
        (a '(href "")
                  "")
          ))
    (slide
      (h1 "References")
      (h3 "Papers, books, etc.")
      (quick-ul
        (a '(href "http://www.softwarepreservation.org/projects/LISP/book/LISP%201.5%20Programmers%20Manual.pdf")
                  "Lisp 1.5 Manual, page 26")
        (a '(href "http://www.gigamonkeys.com/book/introduction-why-lisp.html")
                  "Practical Common Lisp: Why Lisp?")
        (a '(href "https://xkcd.com/224/")
                  "xkcd 224")
        (a '(href "http://joearms.github.io/2013/11/21/My-favorite-erlang-program.html")
                  "Joe Armstrong's favourite program")
        (a '(href "")
                  "")
        (a '(href "")
                  "")
          ))

    (slide
      (h1 "References")
      (h3 "Quotes")
      (quick-ul
        (a '(href "https://twitter.com/josh_wills/status/422136541851312128/")
                  "Say Monad One More Time (Josh Wills")
        (a '(href "")
                  "")
          ))
    ))
