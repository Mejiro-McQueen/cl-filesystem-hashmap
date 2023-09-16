(defsystem #:filesystem-hash-table
  :version "0.1.0"
  :author "Adrian Vazquez"
  :license "MIT"
  :depends-on (#:alexandria #:uiop)
  :components ((:file "packages")
			   (:module "src"
				:depends-on ("packages")
				:components
				((:file "filesystem-hash-table"))
				:description "Hash tables accessible by unix filepaths" :in-order-to ((test-op (test-op "filesystem-hash-table/tests"))))))


(defsystem "filesystem-hash-table/tests"
  :author "Adrian Vazquez"
  :license "MIT"
  :depends-on ("filesystem-hash-table"
			   "fiveam")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for filesystem-hash-table"
  :perform (test-op (op c)
                    (symbol-call :fiveam :run!
                                 (find-symbol* :filesystem-hash-table  :filesytem-hash-table/test))))
