;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'cc-mode)

(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "linux")
            (define-key c-mode-map [(ctrl tab)] 'complete-tag)))

(provide 'setup-cc-mode)
