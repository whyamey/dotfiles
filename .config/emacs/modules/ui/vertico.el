(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package vertico
  :bind (:map vertico-map (("RET" . vertico-directory-enter)))
  :custom
  (vertico-resize t)
  (vertico-cycle t)
  (vertico-count 20)
  :init
  (vertico-mode t))

(use-package consult
  :custom
  (completion-in-region-function #'consult-completion-in-region)
  :bind
  ([remap switch-to-buffer] . consult-buffer)
  ([remap projectile-grep] . consult-grep)
  ("C-s" . consult-line)
  ("C-S-s" . consult-focus-lines))

(use-package marginalia
  :init
  (marginalia-mode))

(setq enable-recursive-minibuffers t)
