;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)

(provide 'setup-expand-region)
