;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'fill-column-indicator)

(define-globalized-minor-mode global-fci-mode fci-mode
  (lambda ()
    (unless buffer-read-only
      (fci-mode t))))

(global-fci-mode t)

(provide 'setup-fill-column-indicator)
