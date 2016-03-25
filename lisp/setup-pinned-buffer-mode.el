;; -*- coding: utf-8; mode: emacs-lisp -*-

;; (global-set-key (kbd "C-c C-p") 'pinned-buffer-mode)

(define-minor-mode pinned-buffer-mode
  "Pin the current buffer to the selected window."
  nil " P" nil
  (set-window-dedicated-p (selected-window) pinned-buffer-mode))

(provide 'setup-pinned-buffer-mode)
