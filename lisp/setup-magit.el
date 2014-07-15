;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'magit)

(global-set-key (kbd "C-x C-g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(setq magit-completing-read-function 'magit-ido-completing-read)

(provide 'setup-magit)
