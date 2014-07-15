;; -*- coding: utf-8; mode: emacs-lisp -*-

(when (memq system-type '(darwin))
  (setq dired-use-ls-dired nil)
  (setq trash-directory "~/.Trash"))

(provide 'setup-macos)
