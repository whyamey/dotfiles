;;; core-custom.el --- Core module that initializes variables -*- lexical-binding: t -*-
;;; Commentary:
;; Defines variables and constants used throughout the configuration
;;; Code:

(defvar igneous--modules nil
  "List containing the loaded modules, filled by `load!'.
Contains atom or cons where the head is the module and the rest are the features to enable for that module.")

(defvar igneous--ext-dependencies nil
  "List containing the external dependencies for each modules, filled by `dependencies!'.")

(provide 'core-custom)
;;; core-custom.el ends here
