;;; core.el --- Core module required by the configuration to work -*- lexical-binding: t -*-
;;; Commentary:
;; Loads all other core modules.
;;; Code:

(defvar igneous--core-modules
  '(;;core-straight
    core-packages
    core-custom
    core-lib
    core-basics
    core-ui
    core-bindings))

(dolist (core-module igneous--core-modules)
  (require core-module))

(provide 'core)
;;; core.el ends here
