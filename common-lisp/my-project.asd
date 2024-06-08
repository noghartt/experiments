(defsystem "my-project"
  :description "A description of my project"
  :version "0.1.0"
  :author "Your Name <your.email@example.com>"
  :license "Specify your license here"
  :depends-on ()
  :serial t
  :components ((:file "src/core")))
; (defsystem "my-project"
;   :description "A description of my project"
;   :version "0.1.0"
;   :author "Your Name <your.email@example.com>"
;   :license "Specify your license here"
;   :depends-on ()
;   :serial t
;   :components ((:module "src")
;                (:file "core")))