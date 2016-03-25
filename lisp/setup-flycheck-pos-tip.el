;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'flycheck-pos-tip)

(setq flycheck-pos-tip-timeout 10)

(eval-after-load 'flycheck '(flycheck-pos-tip-mode))

(provide 'setup-flycheck-pos-tip)
