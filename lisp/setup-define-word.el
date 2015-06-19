;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'define-word)

(global-set-key (kbd "C-c d") 'define-word-at-point)
(global-set-key (kbd "C-c D") 'define-word)

(provide 'setup-define-word)
