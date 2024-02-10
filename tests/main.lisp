(defpackage retumilo-mini/tests/main
  (:use :cl
        :retumilo-mini
        :rove))
(in-package :retumilo-mini/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :retumilo-mini)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
