(use-package multiple-cursors
  :bind
  ("C-." . mc/mark-next-like-this)
  ("C-," . mc/mark-previous-like-this)
  ("C->" . mc/skip-to-next-like-this)
  ("C-<" . mc/skip-to-previous-like-this)
  ("C-c C-." . mc/mark-all-like-this)
  ("C-x SPC" . mc/edit-lines))
