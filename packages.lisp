(defpackage :filesystem-hash-table
  (:use :cl)
  (:documentation "Hash Tables accesibible by unix path names")
  (:export :add-unique-key
           :find-key-by-path
		   :make-filesystem-hash-table
           :link-filesystem-hash-tables))
