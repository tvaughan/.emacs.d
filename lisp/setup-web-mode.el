;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-enable-current-column-highlight t)
            (setq web-mode-enable-current-element-highlight t)
            (setq web-mode-markup-indent-offset 2)))

(provide 'setup-web-mode)
