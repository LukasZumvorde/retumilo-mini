(defsystem "retumilo-mini"
  :version "0.0.1"
  :author "Lukas Zumvorde"
  :license "BSD 2"
  :depends-on ("cl-cffi-gtk" "cl-webkit2" "uiop")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "A super bare bones webkit based web browser, that serves as a stand in for electron."
  :in-order-to ((test-op (test-op "retumilo-mini/tests"))))

(defsystem "retumilo-mini/tests"
  :author "Lukas Zumvorde"
  :license "BSD 2"
  :depends-on ("retumilo-mini"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for retumilo-mini"
  :perform (test-op (op c) (symbol-call :rove :run c)))
