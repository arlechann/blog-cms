(defsystem "blog-cms-test"
  :defsystem-depends-on ("prove-asdf")
  :author "arlechann"
  :license "CC0-1.0"
  :depends-on ("blog-cms"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "blog-cms"))))
  :description "Test system for blog-cms"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
