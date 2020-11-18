(in-package :cl-user)
(defpackage blog-cms
  (:use :cl)
  (:import-from :blog-cms.config
                :config)
  (:import-from :clack
                :clackup)
  (:export :start
           :stop))
(in-package :blog-cms)

(defvar *appfile-path*
  (asdf:system-relative-pathname :blog-cms #P"app.lisp"))

(defvar *handler* nil)

(defun start (&rest args &key server port debug &allow-other-keys)
  (declare (ignore server port debug))
  (when *handler*
    (restart-case (error "Server is already running.")
      (restart-server ()
        :report "Restart the server"
        (stop))))
  (setf *handler*
        (apply #'clackup *appfile-path* args)))

(defun stop ()
  (prog1
      (clack:stop *handler*)
    (setf *handler* nil)))
