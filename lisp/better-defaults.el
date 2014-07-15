;; -*- coding: utf-8; mode: emacs-lisp -*-

(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t)
  (setq font-lock-maximum-decoration t))

(auto-insert-mode t)
(cua-mode t)
(ido-mode t)

(set-cursor-color "#CC6666")

(setq-default fill-column 78)
(setq-default indent-tabs-mode nil)

(setq auto-insert-directory (expand-file-name "templates" user-emacs-directory))
(setq auto-insert-query nil)
(setq auto-save-interval 20)
(setq auto-save-timeout 5)
(setq auto-save-visited-file-name t)
(setq backup-directory (expand-file-name "backups" user-emacs-directory))
(setq backup-directory-alist `(("." . ,backup-directory)))
(setq case-fold-search nil)
(setq column-number-mode t)
(setq compilation-scroll-output t)
(setq create-lockfiles nil)
(setq delete-by-moving-to-trash t)
(setq diff-switches "-u")
(setq erc-fill-prefix "      + ")
(setq erc-insert-timestamp-function 'erc-insert-timestamp-left)
(setq erc-timestamp-format "[%H:%M] ")
(setq ido-auto-merge-work-directories-length -1)
(setq ido-case-fold t)
(setq ido-create-new-buffer 'always)
(setq ido-enable-flex-matching t)
(setq ido-use-virtual-buffers t)
(setq inhibit-startup-screen t)
(setq initial-buffer-choice nil)
(setq initial-scratch-message nil)
(setq require-final-newline t)
(setq ring-bell-function 'ignore)
(setq superword-mode t)
(setq tab-always-indent 'complete)
(setq tramp-default-method "ssh")
(setq transient-mark-mode t)
(setq uniquify-buffer-name-style 'post-forward)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

(add-hook 'dired-load-hook
	  '(lambda ()
	     (load "dired-x")))

(add-hook 'ibuffer-mode-hook
          '(lambda ()
             (ibuffer-auto-mode t)))

(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (when (eq major-mode 'compilation-mode)
    (ansi-color-apply-on-region compilation-filter-start (point-max))))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(provide 'better-defaults)
