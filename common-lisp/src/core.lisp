;; src/core.lisp
(defpackage my-project
  (:use :cl)
  (:export :square))

(in-package my-project)

(defun square (n)
  (* n n))
