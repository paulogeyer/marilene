(ql:quickload "cl-irc")

(defvar channels '("#dentaku"
		   "#tarrafa"))

(in-package :irc)

(setq connection (connect :nickname "marilene"
			    :realname "Ola marilene!"
			    :server "irc.freenode.org"))

(mapcan (lambda (channel) (join connection channel))
	channels)

