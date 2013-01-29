(ql:quickload "cl-irc")

(defvar channels '("#dentaku"
		   "#tarrafa"))

(in-package :irc)

(defvar connection (connect :nickname "marilene"
			    :realname "Ola marilene!"
			    :server "irc.freenode.org"))

(mapcan (lambda (channel) (princ channel))
	channels)
