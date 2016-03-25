;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'flycheck-clojure)

(eval-after-load 'flycheck '(flycheck-clojure-setup))

(provide 'setup-flycheck-clojure)
