(load! :editor
       company
       editorconfig
       expand-region
       flycheck
       hungry-delete
       multiple-cursors
       (parentheses +rainbow)
       project
       markdown-mode
       :input
;       dvorak
       :language
       (cc +lsp)
       (zig)
;       clojure
;       common-lisp
       emacs-lisp
       (python +cython +lsp)
       latex
       :misc
       ;discord
       exec-path-from-shell
       keyfreq
       notes
       :os
       macos
       :themes
       ;;(one-dark +variant)
       ;;ayu-dark
       ;nano-emacs
       timu-caribbean
       ;;solarized-light
       :tools
       git
       (lsp +ui +debug)
       pdf
       vterm
       :ui
       ;;(modeline +doom)
       (discoverability)
       icons
       treemacs
       ;; ligatures
       ;; (ivy +swiper +posframe)
       vertico)
