(cl:defpackage :template-test
  (:use :cl :template :rt)
  (:import-from :rt #:*expected-failures*) )

(rt:rem-all-tests)

