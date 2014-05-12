(defmodule euc-2014-ch5
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Special Projects"))
    (special-projects-preview)
    (special-projects)
    ))

(defun special-projects-preview ()
  (overview-slide
    (h2 "Special Projects: Preview")
    (ul
      (list
        (li "Calrissian")
        (li "LFE + Elli Web Framework")
        (li "LFE + YAWS")
        (li "lfetool")
        (li "jlfe")))
    (notes "")))

(defun special-projects ()
  (list
    (slide
      (h2 "Monads"))
    (slide
      (img '(src "images/say-monad.jpg")))
    (slide
      (h1 "Monad"))
    (slide
      (img '(src "images/sorry.jpg")))
    (slide
      (h2 "Calrissian")
      (quick-ul
        "Brand new."
        "Inspired by erlando project (RabbitMQ)."
        "Only supports maybe monad so far."
        "https://github.com/correl/calrissian")
      (notes ""))
    (slide
      (h2 "Calrissian")
      (lisp-code "
      (include-lib \"deps/calrissian/include/monads.lfe\")

      (defun dostuff ()
        (do-m error-monad
           (input <- (fetch-input))
           (parsed <- (parse-input input))
           (store-data parsed)))
        ")
      (notes ""))
    (slide
      (h2 "Calrissian")
      (lisp-code "
      (defun dostuff ()
        (case (fetch-input)
          ((tuple 'error reason)
           (tuple 'error reason))
          ((tuple 'ok input)
           (case (parse-input input)
                 ((tuple 'error reason)
                  (tuple 'error reason))
                 ((tuple 'ok parsed)
                  (store-data parsed))))))
        ")
      (notes ""))
    (slide
      (h2 "LFE + Elli Web Framework")
      (quick-ul
        "Run inside your Erlang application."
        "Expose HTTP APIs."
        "Do it from LFE!"
        "https://github.com/knutin/elli"
        "https://github.com/lfe/lfe-elli-example")
      (notes ""))
    (slide
      (h2 "LFE + YAWS")
      (quick-ul
        "YAWS: still cranking out the hits."
        (list (inline-code "lfetool") " currently generates 2 kinds of "
              "YAWS projects.")
        (list "Dead-simple with LFE: just define an " (inline-code "out")
              " function in a module.")
        "Even better: use Exemplar to generate HTML S-expressions."
        "Great for REST services.")
      (notes ""))
    (slide
      (h2 "LFE + YAWS + Bootstrap")
      (p (list "via " (inline-code "lfetool")))
      (img '(src "images/YAWS-LFE-Bootstrap-Exemplar-screenshot.png"))
      (notes ""))
    (slide
      (h2 "LFE + YAWS + Exemplar")
      (p "This is the index function for this presentation:")
      (lisp-code "
      (defun build-index (deck-func arg-data)
        (list
          (!doctype 'html)
          (html '(lang \"en\")
            (list
              (build-head arg-data)
              (body
                (list
                  (funcall deck-func arg-data)
                  (reveal-js-content:build-javascript
                    arg-data)))))))
        ")
      (notes ""))
    (slide
      (h2 "LFE + YAWS")
      (quick-ul
        "https://github.com/klacke/yaws"
        "https://github.com/lfe/lfe-reveal-js"
        "https://github.com/lfe/yaws-rest-starter")
      (notes ""))
    (slide
      (h2 "lfetool")
      (img '(src "images/lfetool-logo.png"))
      (notes ""))
    (slide
      (h2 "lfetool")
      (quick-ul
        "This one's a beast."
        "Not enough time to cover everything."
        "It's basically your one-stop-shop for LFE development.")
      (notes ""))
    (slide
      (h2 "lfetool")
      (p "Goodies include:")
      (quick-ul
        "Installing kerl, erlang, rebar, relx, erjang, and others."
        "Building skeleton libraries, OTP apps, YAWS projects, scripts, etc."
        "Colored output test-runner."
        "Bash auto-completion for feature-discovery.")
      (notes ""))
    (slide
      (h2 "lfetool")
      (img '(src "images/unit-tests-run.png"))
      (notes ""))
    (slide
      (h2 "lfetool")
      (quick-ul
        "Getting regular community contributions."
        "New features landing almost every week."
        "https://github.com/lfe/lfetool")
      (notes ""))
    (slide
      (h2 "jlfe")
      (img '(src "images/DukeOfferingLFE-square-tiny.png"))
      (notes ""))
    (slide
      (h2 "jlfe")
      (quick-ul
        "Super experimental."
        "Working on Java call syntax from LFE."
        "Lots of macro work."
        "TONS of fun!")
      (notes ""))
    (slide
      (h2 "jlfe")
      (p "Sample calls:")
      (lisp-code "
      > (.Double 42)
      42.0
      > (.Math:sin 0.5)
      0.479425538604203
      > (.Math:PI)
      3.141592653589793
      >
      > (.java.math.BigDecimal:ROUND_CEILING)
      2
      > (jlfe-types:value-of bool)
      true
      ")
      (notes ""))
    (slide
      (h2 "jlfe")
      (quick-ul
        "Looking at Clojure a great deal."
        "Currently working on solution for instance methods."
        "Also sorting out evaluated expressions in calls."
        "https://github.com/trifork/erjang"
        "https://github.com/lfe/jlfe")
      (notes ""))
    ))
