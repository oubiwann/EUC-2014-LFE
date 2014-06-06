(defmodule unit-euc-2014-tests
  (export all)
  (import
    (from lfeunit-util
      (check-failed-assert 2)
      (check-wrong-assert-exception 2))))

(include-lib "lfeunit/include/lfeunit-macros.lfe")

(deftest placeholder
  (is-equal 1 1))
