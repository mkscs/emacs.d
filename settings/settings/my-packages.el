;; MELPA repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
             
;; Load packages
(package-initialize)
(setq my-required-packages
      (list 'magit
	    'ido
      'smex
      'company
      'projectile
      'flycheck
      'multi-term
      'dash-at-point
      'multiple-cursors
      'ob-mongo
      'ob-elixir
      'dockerfile-mode
      'terraform-mode
      'puppet-mode
      'slim-mode
      'go-mode
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
     ))

