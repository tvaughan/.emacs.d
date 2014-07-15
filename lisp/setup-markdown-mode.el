;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

(provide 'setup-markdown-mode)
