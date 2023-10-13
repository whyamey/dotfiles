(use-package org-roam
  :demand t
  :custom
  (org-roam-directory "~/notes")
  (org-roam-completion-everywhere t)
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n t" . org-roam-tag-add)
         ("C-c n T" . org-roam-tag-remove)
         :map org-mode-map
         ("M-?"    . completion-at-point)
         ("M-." . org-open-at-point)))

(use-package org-roam-ui
  :after org-roam
  :hook (after-init . org-roam-ui-mode)
  :custom
  (org-roam-ui-sync-theme t)
  (org-roam-ui-follow t)
  (org-roam-ui-update-on-save t)
  (org-roam-ui-open-on-start t)
  :config
  (add-hook 'org-roam-buffer-postrender-functions
            (lambda () (org--latex-preview-region (point-min) (point-max))))
  (org-roam-db-autosync-mode))

(use-package org
  :defer t
  :ensure nil
  :custom
  (org-src-fontify-natively t)
  (org-highlight-latex-and-related '(latex script entities)))

(use-package org-fragtog
  :hook
  (org-mode . org-fragtog-mode))
