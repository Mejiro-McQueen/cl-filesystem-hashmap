(defsystem #:filesystem-hash-table
  :version "0.1.0"
  :author "Adrian Vazquez"
  :license "MIT"
  :depends-on (#:alexandria #:uiop)
  :components ((:file "packages")
			   (:file "filesystem-hash-table"
				:depends-on ("packages")))
  :description "Hash tables accessible by unix filepaths" :in-order-to ((test-op (test-op "filesystem-hash-table/tests"))))
