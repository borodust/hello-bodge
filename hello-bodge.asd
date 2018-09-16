(asdf:defsystem hello-bodge
  :description "cl-bodge demo to check if all systems work as expected"
  :version "1.0.0"
  :author "Pavel Korolev"
  :license "MIT"
  :depends-on (cl-bodge)
  :pathname "src/"
  :serial t
  :components ((:file "packages")
               (:file "utils")
               (:file "demo")))
