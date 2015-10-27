;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'jsx-mode)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

(provide 'setup-jsx-mode)
