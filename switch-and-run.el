;;; switch-and-run.el --- Utilities for working with a track switched desktop.
;; Author Charles Lowell <cowboyd@frontside.io>
;; Version: 1.0.0
;; Package-Requires: ((minitest "0.8.1"))
;;; Commentary:

;; This library provides utility functions when working with the
;; an application in track-switch mode. That is to
;; say, while it supports switching between multiple rails modes.

;;; Code:

;; Forward declare the variable where minitest stores its last
;; command. This is defined by minitest, but we put a declaration here
;; to let the elisp reader know that yes, it's ok, we're binding to a
;; global variable. It's of the form (list command filename)
(defvar minitest--last-command)


;; Indicate that this package depends on the `minitest-rerun' function
;; declared in minitest.el. If this package and function are not
;; present, then this file will fail to load.
(declare-function minitest-rerun "minitest.el")

;;;###autoload
(defun track-switch-minitest-toggle-and-rerun ()
  "Re-runs the previous minitest command on the opposing Rails track.

This temporarily sets the minitest--last-command variable used my minitest to be
prepended by the command 'bundle exec bin/track-switch --toggle &&' before
running minitest-rerun.  It ensures that it sets it back to its original value
afterwards."
  (interactive))

;;; switch-and-run.el ends here
