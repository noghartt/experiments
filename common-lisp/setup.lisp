(require :asdf)
(asdf:load-system :my-project)

(defun main ()
  (my-project:square 10))

(main)