;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'setup-flycheck)
