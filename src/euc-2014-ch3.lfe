(defmodule euc-2014-ch3
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "New Developments"))
    (new-developments-preview)
    (new-developments)))

(defun new-developments-preview ()
  (overview-slide
    (h2 "New Developments: Preview")
    (quick-ul
      "Released Features"
      "New Example Code"
      "New Documentation"
      "Current Work"
      "LFE Roadmap"
      "Community Projects")
    (notes "")))

(defun new-developments ()
  (list
    (slide
      (h2 "Released Features")
      (quick-ul
        "Maps have landed in LFE."
        (list "A new " (inline-code "(run ...) ") "REPL command for "
              "running LFE shell commands.")
        "It is now possible to define functions and macros in the REPL."
        "Strings no longer need to be quoted."
        (list (inline-code "(mod:func ...) ") "syntax has been added."))
      (notes ""))
    (slide
      (h2 "Released Features (cont'd)")
      (quick-ul
        (list "LFE now has Common Lisp macros " (inline-code "(prog1 ...)")
              " and " (inline-code "(prog2 ...)") ".")
        (list "New " (inline-code "(fields-name) ") "macro for easier "
              "usage of Mnesia from LFE.")
        (list (inline-code "#| ... |# ") "Common Lisp-style multiline "
              "comments now supported.")
        (list "Improved handling of " (inline-code ".hrl ") "files."))
      (notes ""))
    (slide
      (h2 "New Example Code")
      (quick-ul
        "Ring benchmark."
        "Joe Armstrong's favorite program."
        "Another message-passing example."
        "Async HTTP example."
        "Guessing game example :-)")
      (notes ""))
    (slide
      (h2 "New Documentation")
      (quick-ul
        "The Erlang \"Programming Rules and Conventions\" was ported to LFE."
        "The Common Lisp Style Guide was ported to LFE."
        "Quick Start Guide was rewritten."
        "New \"Counter Application\" tutorial on lfe.github.io."
        "\"Setting up a Development Environment\" section was added to the User Guide.")
      (notes ""))
    (slide
      (h2 "New Documentation In-Progress")
      (quick-ul
        "Mneisa tutorial on lfe.github.io."
        "Java Interop Section of the User Guide."
        "An LFE port of \"Land of Lisp\" is under way.")
      (notes ""))
    (slide
      (h2 "Current Work")
      (quick-ul
        "First candidate module for LFE stdlib has an open pull request."
        "Several tasks to improve the use of Erjang and Java from LFE.")
      (notes ""))
    (slide
      (h2 "LFE Roadmap")
      (quick-ul
        "Spec and type support, pending José Valim's work on AST in .beam files."
        "Submitting more candidates for inclusion in LFE stdlib."
        "Improvements to LFE internals."
        "Reader macros."
        "APIs for data type functions."
        "Defining the release process."
        "Preparing for an LFE 1.0 release!")
      (notes "At this point, the release of LFE 1.0 is pretty much arbitrary. "
             "Robert is ready to do it at any time."))
    (slide
      (h2 "LFE Docs Roadmap")
      (quick-ul
        "Creating an \"Erlang Idioms in LFE\" Guide."
        "Starting an LFE Cookbook."
        "Completing the Java Interop documentation."
        "Finishing the LFE User Guide."
        )
      (notes ""))
    (slide
      (h2 "Community Projects of Note")
      (quick-ul
        "Monads for LFE (calrissian; more later)"
        "LFE and Elli"
        "LFE and YAWS"
        "Reveal.js for LFE and YAWS (lfe-reveal-js)"
        "HTML as S-expressions in LFE (exemplar)"
        "lfetool (more later)"
        "LFE on Erjang (more later)")
      (notes "As noted, some of these we will be taking a look at later in "
             "the presentation. First, let's do a quick refresher on LFE "
             "itself."))))
