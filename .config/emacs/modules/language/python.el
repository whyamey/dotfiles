(use-package python
  :defer t
  :ensure nil
  :custom
  (python-indent 4)
  (py-split-window-on-execute t))

;; Required for MacOS, prevents newlines from being displayed as ^G
(setq python-shell-interpreter-args (if (equal system-type 'darwin)
					                    "-c \"exec('__import__(\\'readline\\')')\" -i"
				                      "-i"))

(defun igneous--activate-venv ()
  (interactive)
  (unless (bound-and-true-p pyvenv-virtual-env-name)
    (call-interactively #'pyvenv-activate)))

(use-package pyvenv
  :after python
  :hook
  (python-mode . igneous--activate-venv)
  (python-mode . pyvenv-mode))

(with-feature! +cython
  (use-package cython-mode)
  (use-package flycheck-cython
    :if (module-p! :tools flycheck)
    :after flycheck
    :config
    (add-to-list 'flycheck-checkers 'cython)))

(with-feature! +lsp
  (if (module-p! :tools lsp)
      (use-package lsp-pyright
        :init
        (add-hook 'python-mode-hook #'lsp 80)  ;; 80 is the depth, helping making sure it runs after other hook functions
        (require 'lsp-pyright))
    (warn "Module language/python requires module tools/lsp for feature +lsp to work.")))

;(dependencies! python)
