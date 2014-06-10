(defmodule euc-2014-opening
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (list
    (title-page
      (h1 "The State of LFE")
      (h2 "A Lisp Flavoured Smörgåsbord")
      (h3 "Erlang User Conference, Stockholm 2014")
      (div "Duncan McGreggor")
      (notes "This LFE talk was originally going to be a "
             "re-run of the LFE talk given at Erlang Factory San Francisco, "
             "with some additions demonstrating production deployments of "
             "LFE. "
             (br)(br)
             "However, one of the really great things that happened at Erlang "
             "Factory San Francisco was a fireside chat with Robert about the "
             "next things we'd like to work on in LFE, including the requests "
             "we'd received from the user community."
             (br)(br)
             "Following that conference, we made " (em "so") " much progress on LFE "
             "features and related projects, that plans had to change around "
             "this presentation: we needed to share the latest developments "
             "in what appears to be an LFE renaissance. "
             (br)(br)
             "So here it is :-)"
             ))))
