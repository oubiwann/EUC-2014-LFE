(defmodule euc-2014-ch8
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "References")
      (h3 "Projects")
      (ul
        (list
          (li "")
          )))

    (slide
      (h1 "References")
      (h3 "Papers, books, etc.")
      (ul
        (list
          (li (a '(href "http://www.softwarepreservation.org/projects/LISP/book/LISP%201.5%20Programmers%20Manual.pdf")
                        "Lisp 1.5 Manual, page 26"))
          (li (a '(href "http://www.gigamonkeys.com/book/introduction-why-lisp.html")
                        "Practical Common Lisp: Why Lisp?"))
          (li (a '(href "https://xkcd.com/224/")
                        "xkcd 224"))
          (li (a '(href "http://joearms.github.io/2013/11/21/My-favorite-erlang-program.html")
                        "Joe Armstrong's favourite program"))
          )))

    (slide
      (h1 "References")
      (h3 "Quotes")
      (ul
        (list
          (li "")
          )))
    ))
