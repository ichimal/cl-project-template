(cl:in-package :cl-user)

(defpackage #:template-asd
  (:use :cl :asdf) )

(in-package #:template-asd)

(defsystem template
  :name "package name"
  :version "0.0.1"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :description "descriptioin"
  :components
    ((:module src
      :serial t
      :components ((:file :packages)
                   (:file :others) ))))

(defmethod perform ((op test-op)
                    (component (eql (find-system :template))) )
  (declare (ignore op component))
  (operate 'load-op :template-test)
  (operate 'test-op :template-test :force t) )

