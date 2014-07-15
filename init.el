;; -*- coding: utf-8; mode: emacs-lisp -*-

(let ((default-directory "/usr/local/share/emacs/site-lisp"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'cask)
(cask-initialize)

(let ((user-lisp-directory (expand-file-name "lisp" user-emacs-directory)))
  (add-to-list 'load-path user-lisp-directory)
  (mapc (lambda (name)
          (require (intern (file-name-sans-extension name))))
        (directory-files user-lisp-directory nil "\\.el$")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
