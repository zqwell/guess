#|
  This file is a part of guess project.
|#

(in-package :cl-user)
(defpackage guess-test-asd
  (:use :cl :asdf))
(in-package :guess-test-asd)

(defsystem guess-test
  :author ""
  :license ""
  :depends-on (:guess
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "guess")))))
