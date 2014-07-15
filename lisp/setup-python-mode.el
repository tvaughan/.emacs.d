;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'python)

(add-hook 'python-mode-hook
	  (lambda ()
	    (set-fill-column 108)))

(add-to-list 'auto-mode-alist '("\\.wsgi\\'" . python-mode))

(define-auto-insert "\.py" "python3.py")

(define-key python-mode-map (kbd "C-c C-c")
  (lambda ()
    (interactive)
    (python-shell-send-buffer t)))

(provide 'setup-python-mode)
