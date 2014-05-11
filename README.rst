##################################
LFE Presentation for the EUC, 2014
##################################


Introduction
============

Add content to me here!


Dependencies
------------

This project assumes that you have `lfetool`_ and `rebar`_ installed
somewhere in your ``$PATH``.


Overview
========

Topics to Cover
---------------

* Intro to LFE
* Summarizing Points from last presentation
* Latest changes in LFE
* Planned Features
* Projects and Libraries
  * Highlight: lfetool
  * Newest additions to the community
* Elixir Interop
* jlfe: LFE + Erjang
* LFE + JInterface
* Upcoming projects
* Summary & Conclusion


Chapter Breakdown
-----------------

Title Page

Why Lisp?

* Quick history of Lisp
* The best of Lisp + the best of Erlang
* The community benefits from a richer diversity

LFE Intro/Recap

* Origins
* Previous presentations
* Code samples

Released Features

* Maps in LFE.
* A new (run ...) REPL command run running LFE shell commands.
* Now possible to define functions and macros in the REPL.
* Strings no longer need to be quoted.
* LFE now has Common Lisp macros (prog1 ...) and (prog2 ...).
* (mod:func ...) syntax now supported.
* New (fields-name) macro for easier usage of Mnesia from LFE.
* #| ... |# Common Lisp-style multiline comments now supported.
* Improved handling of .hrl files.

New Example Code

* Added ring benchmark.
* Added Joe Armstrong's favorite program.
* Added another message-passing example.
* Added async HTTP example.
* Added guessing game example.

New Documentation

* New features updated in the text docs.
* The Erlang "Programming Rules and Conventions" was ported to LFE.
* The Common Lisp Style Guide was ported to LFE.
* Work on new Java Interop Section is under way.
* New mneisa tutorial on lfe.github.io.
* Quick Start Guide was rewritten.
* New "Counter Application" tutorial on lfe.github.io.
* New "Setting up a Development Environment" section was added to the User
  Guide.
* A port of Land of Lisp to LFE is under way.

Current Work

* First candidate module for LFE stdlib has an open pull request.
* Several tasks to improve the use of Erjang and Java from LFE.

LFE Roadmap

* Spec and type support, pending José Valim's work on AST support in .beam
  files.
* Submitting more candidates for inclusion in LFE stdlib.
* Improvements to LFE internals.
* Reader macros.
* APIs for data type functions.
* Preparing for an LFE 1.0 release!

LFE Docs Roadmap

* Creating an "LFE Idioms Guide for Erlangers".
* Creating an LFE Cookbook.
* Completing the Java Interop documentation.
* Finish the LFE User Guide.

Community Projects

* Monads for LFE (calrissian)
* Reveal.js for LFE and YAWS (lfe-reveal-js)
* lfetool (more later)
* HTML as S-expressions in LFE (exemplar)
* LFE and Elli
* LFE and YAWS
* Test fixture support landed in lfeunit
* LFE on Erjang (more later)

Lando Quotes

Welcome,
I'm the Administrator of this facility.

Yeah, I'm responsible.
The price you pay for being successful.

Sorry,
Am I interrupting anything?

Our operation is small enough
not to be noticed.

I've just made a deal
That will keep the Epire out of here forever.

I had no choice.
I'm sorry.


Playing Well with Others

* Elixir
* jlfe
* JInterface and Clojure

Wrap UP

"Un grand pouvoir implique une grande responsabilité"
- François-Marie Arouet (Voltaire)


In our industry with live with a terrible legacy: electronic computing
has its origins in ...

This is a time of new beignnings. Let us remember to benefit others
with this power, and resist the siren's call of power-abuse.

This is not from Spiderman, nor even his Uncle Ben. It's not from FDR.


Usage
=====

.. code:: bash

    $ make compile
    $ make dev

Then go to `localhost:5099`_ in your browser to view the presentation.


.. Links
.. =====

.. _lfetool: https://github.com/lfe/lfetool
.. _rebar: https://github.com/rebar/rebar
.. _localhost:5099: http://localhost:5099/
