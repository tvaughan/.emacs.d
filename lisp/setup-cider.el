;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'cider)

(setq cider-auto-select-error-buffer nil)
(setq cider-overlays-use-font-lock t)
(setq cider-prompt-save-file-on-load 'always-save)
(setq cider-repl-result-prefix "☃ => ")
(setq cider-repl-use-clojure-font-lock t)
(setq cider-repl-use-pretty-printing t)
(setq cider-repl-wrap-history t)
(setq cider-test-show-report-on-success t)
(setq nrepl-hide-special-buffers t)

(add-hook 'clojure-mode-hook
          (lambda ()
            (set-fill-column 108)
            (company-mode)))

(add-hook 'clojure-repl-mode-hook
          (lambda ()
            (company-mode)))

(provide 'setup-cider)
