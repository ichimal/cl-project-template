(cl:in-package :cl-user)

(defpackage #:template-test-asd
  (:use :cl :asdf) )

(in-package #:template-test-asd)

(defsystem template-test
  :version "0.0.1"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :depends-on (:template :rt)
  :components
    ((:module test
      :serial t
      :components
        (;; setup basic test environment
         (:file :packages)
         ;; test suite
         (:file :something-test-suite) ))))

(defmethod perform ((op test-op)
                    (component (eql (find-system :template-test))) )
  (declare (ignore op component))
  (if (funcall (intern "DO-TESTS" :rt))
    (funcall (intern "REM-ALL-TESTS" :rt)) ))

