#|
  This file is a part of guess project.
|#

(in-package :cl-user)
(defpackage guess-asd
  (:use :cl :asdf))
(in-package :guess-asd)

(defsystem guess
  :version "0.1"
  :author "zqwell <zqwell.ss@gmail.com>"
  :license "GPL"
  :depends-on (:anaphora :alexandria)
  :components ((:module "src"
                :components
                ((:file "package")
		 (:file "dfa")
		 (:file "table")
		 (:file "keyword")
		 (:file "guess"))))
  :description "common lisp porting of libguess-1.0 that is a character set detection library."
  
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq))))
