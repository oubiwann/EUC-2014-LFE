#################################
LFE Presntation for the EUC, 2014
#################################


Introduction
============

Add content to me here!


Dependencies
------------

This project assumes that you have `rebar`_ installed somwhere in your
``$PATH``.

This project depends upon the following, which are installed to the ``deps``
directory of this project when you run ``make deps``:

* `LFE`_ (Lisp Flavored Erlang; needed only to compile)
* `lfeunit`_ (needed only to run the unit tests)


Installation
============

Just add it to your ``rebar.config`` deps:

.. code:: erlang

    {deps, [
        ...
        {euc-2014, ".*", {git, "git@github.com:oubiwann/euc-2014.git", "master"}}
      ]}.


And then do the usual:

.. code:: bash

    $ rebar get-deps
    $ rebar compile


Usage
=====

.. code:: bash

    $ make compile
    $ make dev

Then go to `localhost:5099`_ in your browser.


.. Links
.. =====

.. _rebar: https://github.com/rebar/rebar
.. _LFE: https://github.com/rvirding/lfe
.. _lfeunit: https://github.com/lfe/lfeunit
.. _localhost:5099: http://localhost:5099/
