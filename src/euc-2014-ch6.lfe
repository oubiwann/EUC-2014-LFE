;;;; Chapter content includes:
;;;;  * Interop with Erlang
;;;;  * Interop with Elixir
;;;;  * Interop with JVM via Erjang
;;;;  * Interop with JVM via JInterface
;;;;
(defmodule euc-2014-ch6
  (export all))

(include-lib "include/macros.lfe")

(defun build ()
  (chapter
    (slide
      (h1 "Language Interop"))
    (language-interop-preview)
    (erlang-interop)
    (elixir-interop)
    (erjang-interop)
    (jinterface-interop)))

(defun language-interop-preview ()
  (overview-slide
    (h2 "Language Interop: Preview")
    (ul
      (list
        (li "LFE & Erlang")
        (li "LFE & Elixir")
        (li "LFE & Java/Erjang")
        (li "LFE & Clojure")))
    (notes "")))

(defun erlang-interop ()
  (list
    (slide
      (h2 "The Erlang VM")
      (p-frag "We're seeing a renaissance in Erlang these days.")
      (p-frag "Lots of languages on the Erlang VM.")
      (p-frag "Several ways to interact with Erlang: ports, drivers, JInterface.")
      (p-frag "What does this look like from the LFE perspective?")
      (notes ""))
    (overview-slide
      (h2 "LFE & Erlang"))
    (slide
      (h2 "LFE & Erlang")
      (img '(src "images/Erlang_logo.png"))
      (notes ""))
    (slide
      (h2 "LFE & Erlang")
      (quick-ul
        "This one's a no-brainer."
        "Included for completeness :-)"
        "Define modules & functions."
        "Make calls to Erlang functions from LFE functions.")
      (notes ""))
    (slide
      (h2 "LFE & Erlang")
      (p "Classic LFE call syntax:")
      (lisp-code "
        (: lists map ... )
        ")
      (p "New call syntax:")
      (lisp-code "
        (lists:map ... )
        ")
      (notes ""))))

(defun elixir-interop ()
  (list
    (overview-slide
      (h2 "LFE & Elixir"))
    (slide
      (h2 "LFE & Elixir")
      (img '(src "images/elixir-logo.png"))
      (br)
      (quick-ul-frag
        "Almost as easy as using Erlang from LFE."
        "Add Elixir to the rebar deps of your LFE project.")
      (notes ""))
    (slide
      (h2 "LFE & Elixir")
      (p "Build it and start LFE:")
      (shell-code "
        $ make get-deps && make compile
        $ lfetool repl lfe \\
            -pa ./deps/elixir/lib/elixir/ebin/
        ")
      (notes "This will dump you into the LFE REPL with access to the "
             "Elixir .beam files."
             (br)(br)
             "You may need to include more Elixir ebin dirs, depending upon "
             "your needs."))
    (slide
      (h2 "LFE & Elixir")
      (p "Sample calls:")
      (lisp-code "
      > (Elixir.IO:puts \"hello\\nworld\")
      hello
      world
      ok
      > (set stream (Elixir.Stream:cycle '(1 2 3)))
      #Fun&lt;Elixir.Stream.15.23582569&gt;
      > (Elixir.Enum:take stream 10)
      (1 2 3 1 2 3 1 2 3 1)
      > (Elixir.Enum:take stream 20)
      (1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2)
      ")
      (notes ""))
    (slide
      (h2 "LFE & Elixir")
      (h3 "Things to try")
      (quick-ul
        "Working with Elixir's built-ins."
        "Elixir Protocols."
        "Exploring Elixir's Unicode support.")
      (notes ""))))

(defun erjang-interop ()
  (list
    (overview-slide
      (h2 "LFE & Java/Erjang"))
    (slide
      (h2 "LFE & Java/Erjang")
      (quick-ul
        "jlfe - an experimental project providing syntax for LFE/Erjang."
        "Right now, it patches a local copy of LFE."
        (list "The patch adds support for parsing calls that start "
              "with " (inline-code ".") " (dot).")
        "Wrapper functions for providing convenient syntax."
        (list "Boiler plate " (inline-code "java.lfe") " module creation.")
        "Utility functions for working with Java objects.")
      (notes "We've already seen a little bit of LFE and Java with jlfe."))
    (slide
      (h2 "LFE & Java/Erjang")
      (h3 "Outstanding Issues")
      (quick-ul
        "Constructors with args in the jlfe syntax isn't supported yet."
        "jlfe doesn't currently support a special syntax for instance methods."
        (list "LFE has a problem handling the Java "
              (inline-code "String") " object.")
        "jlfe provides a work-around for this, but it isn't pretty."
        "Quitting with ^D results in ugly traceback.")
      (notes "We've already seen a little bit of LFE and Java with jlfe."))
    (slide
      (h2 "LFE & Java/Erjang")
      (h3 "Comparison: Static Method Calls")
      (p "LFE/Erjang")
      (lisp-code "
      > (java:call 'java.lang.String 'getName '() '())
      \"java.lang.String\"
      > (call 'java.lang.Math 'sin 0.5)
      0.479425538604203
      ")
      (p "jlfe")
      (lisp-code "
      > (.String:getName)
      \"java.lang.String\"
      > (.Math:sin 0.5)
      0.479425538604203
      ")
      (notes ""))
    (slide
      (h2 "LFE & Java/Erjang")
      (h3 "Comparison: Static Field Variable Access")
      (p "LFE/Erjang")
      (lisp-code "
    > (java:get_static 'java.lang.Math 'PI)
    3.141592653589793
    > (java:get_static 'java.math.BigDecimal 'ROUND_CEILING)
    2
      ")
      (p "jlfe")
      (lisp-code "
    > (.Math:PI)
    3.141592653589793
    >
    > (.java.math.BigDecimal:ROUND_CEILING)
    2
      ")
      (notes ""))
    (slide
      (h2 "LFE & Java/Erjang")
      (h3 "Comparison: Constructors")
      (p "LFE/Erjang")
      (lisp-code "
  > (set st (call 'java.lang.String 'new))
  ()
  > (set hm (call 'java.util.HashMap 'new))
  ()
  > (set se (java.util.AbstractMap$SimpleEntry 'new \"a\" \"b\"))
  #B()
      ")
      (p "jlfe")
      (lisp-code "
  > (set st (.String))
  ()
  > (set hm (.java.util.HashMap))
  ()
  > (set se (.java.util.AbstractMap$SimpleEntry \"a\" \"b\"))
  #B()
      ")
      (notes ""))
    (slide
      (h2 "LFE & Java/Erjang")
      (h3 "Instance Members")
      (p "LFE/Erjang")
      (lisp-code "
      > (call se 'getKey)
      '\"a\"
      > (call se 'getValue)
      '\"b\"
      ")
      (p "No jlfe syntax yet.")
      (notes "Can't use a dot form, since that's a protected symbol in "
             "Common Lisp and LFE."))
    (slide
      (h2 "LFE & Java/Erjang")
      (h3 "Values of Java Types")
      (lisp-code "
      > (set bool (.Boolean true))
      #B()
      > (set flt (.Float 42))
      #B()
      > (set bigdec (.java.math.BigDecimal 42))
      #B()
      ")
      (p "Convenience functions:")
      (lisp-code "
      > (jlfe-types:value-of bool)
      true
      > (jlfe-types:value-of flt)
      42.0
      > (jlfe-types:value-of bigdec)
      42.0
      ")
      (notes "When a result is a Java type, it can be awkward getting the "
             "associated value. One has to call specific methods on the java "
             "objects and possibly convert the results. value-of handles all "
             "of this for you."))
    (slide
      (h2 "LFE & Java/Erjang")
      (h3 "Areas to Explore")
      (quick-ul
        "Discovering a nice macro for unifying object access syntax."
        "Coming up with better ways to handle arguments in constructors."
        (list "Building Erjang with additional/3rd party " (inline-code ".jar")
              " files.")
        "Working with Robert to find a way to make jlfe pluggable with LFE.")
      (notes "That last point would be nice, since it would obviate the need "
             "for jlfe to patch LFE."))
    ))

(defun jinterface-interop ()
  (list
    (overview-slide
      (h2 "LFE & Clojure"))
    (slide
      (h2 "LFE & Clojure")
      (quick-ul
        "Create 2 nodes: an LFE one, and a Clojure one."
        (list "LFE/OTP starts up Clojure " (inline-code "java") " process")
        "Uses JInterface in Clojure to handle Erlang data."
        "Ported from Written by Maxim Molchanov.")
      (notes ""))
    (slide
      (h2 "Erlang & Clojure")
      (h3 "Preparations")
      (shell-code "
      $ git clone https://github.com/lfe/lfecljapp.git
      $ make compile
      $ make repl
      ")
      (notes "At this point, you'll be dumped into the LFE REPL."))
    (slide
      (h2 "Erlang & Clojure")
      (h3 "Starting")
      (lisp-code "
  (lfenode@cahwsx01)> (lfeclj-app:start)
  ok
  (lfenode@cahwsx01)> lfecljapp.lfe:187:<0.44.0>:...
  INFO: Starting clojure app with cmd \"java -Dnode=... \"
  (lfenode@cahwsx01)> lfecljapp.lfe:118:<0.42.0>:...
  INFO: Connection to java node established, pid: <6709.1.0>
      ")
      (notes "Run the usual commands."))
    (slide
      (h2 "Erlang & Clojure")
      (h3 "Trying It Out")
      (p "Send a message:")
      (lisp-code "
  (lfenode@cahwsx01)> (lfecljapp:ping \"clj-node@cahwsx01\"
                                      \"clj-mbox\")
  #(ping <0.32.0>)
      ")
      (p "Check for a response:")
      (lisp-code "
      (lfenode@cahwsx01)> (c:flush)
      Shell got {pong,<6709.1.0>}
      ok
      ")
      (notes "Now that the nodes are running, you can take it for a "
             "test drive."))
    (slide
      (h2 "LFE & Clojure")
      (h3 "What's Happening")
      (quick-ul-frag
        "We've got an LFE/OTP app,"
        "That's calling out to the shell to start up a Clojure/JInterface app."
        "Messages are sent by the LFE node to the Clojure node,"
        "And then processed by Clojure code,"
        "Finally sending a response back to the LFE node (in this case, the REPL).")
      (notes "We've barely scratched the surface, "))
    (slide
      (h2 "LFE & Clojure")
      (h3 "Future Work")
      (quick-ul
        "Run number-crunching apps as Erlang nodes."
        "Do machine learning!"
        "Try it with Erjang and jlfe instead of Clojure ...")
      (notes "As you might imagine, there is a world of possibility here :-)"))
    ))
