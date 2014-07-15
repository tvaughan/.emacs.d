;; -*- coding: utf-8; mode: emacs-lisp -*-

(require 'mu4e)

(setq message-kill-buffer-on-exit t)
(setq message-send-mail-function 'smtpmail-send-it)

(setq mu4e-confirm-quit nil)
(setq mu4e-drafts-folder "/.Drafts")
(setq mu4e-get-mail-command "true")
(setq mu4e-html2text-command "pandoc -f html -t plain --normalize --columns 72")
(setq mu4e-sent-folder "/.Sent")
(setq mu4e-trash-folder "/.Trash")
(setq mu4e-view-prefer-html nil)
(setq mu4e-view-show-addresses t)

(setq smtpmail-smtp-server "tocino.cl")
(setq smtpmail-stream-type 'starttls)

(setq user-full-name "Tom Vaughan")
(setq user-mail-address "tvaughan@tocino.cl")

(provide 'setup-mu4e)
