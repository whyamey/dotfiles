;;; core-bindings.el --- Core module that redefines keybindings -*- lexical-binding: t -*-
;;; Commentary:
;; Modifies keybindings of builtin modes and functions.
;;; Code:


(global-set-key (kbd "C-x C-b") #'ibuffer)
(global-set-key (kbd "M-o") #'other-window)
(global-set-key (kbd "C-x k") #'kill-this-buffer)

(with-eval-after-load 'comint
  (define-key comint-mode-map (kbd "C-l") #'comint-clear-buffer))

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "C-c C-c") #'wdired-change-to-wdired-mode))

(use-package mwim
  :bind
  ("C-a" . mwim-beginning)
  ("C-e" . mwim-end))

(provide 'core-bindings)
;;; core-bindings.el ends here
