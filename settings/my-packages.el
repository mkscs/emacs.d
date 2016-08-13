;; MELPA repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
             
;; Load packages
(package-initialize)
(setq my-required-packages
      (list
       'magit
       'atom-one-dark-theme
       'anzu
       'expand-region
       'project-explorer
       'dired-subtree
       'ido
       'ido-vertical-mode
       'aggressive-indent
       'smex
       'company
       'projectile
       'flycheck
       'multi-term
       'dash-at-point
       'multiple-cursors
       'ob-mongo
       'ob-go
       'ob-elixir
       'dockerfile-mode
       'terraform-mode
       'puppet-mode
       'slim-mode
       'go-mode
       'powershell
       'company-go
       'go-eldoc
       'sass-mode
       'coffee-mode
       'yaml-mode
       'robe
       'json-mode
       ))

(dolist (package my-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

(provide 'my-packages)


;; globally enabled packages
(add-hook 'after-init-hook 'global-company-mode)
(projectile-global-mode)
(global-flycheck-mode)
(global-aggressive-indent-mode 1)
(global-anzu-mode +1)
(global-auto-revert-mode 1)

;; load babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '( (perl . t)
    (ruby . t)
    (sh . t)
    (python . t)
    (emacs-lisp . t)
    (awk . t)
    (css .t)
    (js .t)
    (makefile .t)
    (java .t)
    (sass .t)
    (sql .t)
    (sqlite .t)
    (mongo .t)
    (elixir .t)
    (go .t)
    ))
