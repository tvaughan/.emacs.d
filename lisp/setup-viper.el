;; -*- coding: utf-8; mode: emacs-lisp -*-

(setq viper-mode t)

(require 'viper)

(defadvice viper-maybe-checkout (around viper-never-checkout (&args) activate)
  (setq ad-return-value nil))

(global-set-key (kbd "M-h") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-k") 'previous-line)
(global-set-key (kbd "M-j") 'next-line)

(provide 'setup-viper)
