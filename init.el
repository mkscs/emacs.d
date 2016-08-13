;; Main configuration
(package-initialize)
(server-start)

(add-to-list 'load-path (expand-file-name "settings/" user-emacs-directory))
(load "helpers/my-helpers.el")
(require 'my-config)
(require 'my-keybindings)
(require 'my-packages)
(load "packages/my-ido.el")
(load "packages/my-smex.el")
(load "packages/my-robe.el")
(load "packages/my-company.el")
(load "packages/my-go.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" default)))
 '(package-selected-packages
   (quote
    (ido-vertical-mode ctags powershell yaml-mode terraform-mode smex slim-mode sass-mode robe puppet-mode projectile project-explorer popup ob-mongo ob-go ob-elixir multiple-cursors multi-term magit json-mode go-eldoc flycheck flatland-theme expand-region enh-ruby-mode dockerfile-mode direx dired-subtree dash-at-point company-go coffee-mode base16-theme atom-one-dark-theme anzu airline-themes aggressive-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-mode-line ((t (:foreground "#93e0e3" :weight bold))))
 '(company-scrollbar-bg ((t (:background "#3e4450"))))
 '(company-scrollbar-fg ((t (:background "#333842"))))
 '(company-tooltip ((t (:inherit default :background "#2c3039"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(dired-directory ((t (:foreground "#6FA1F1"))))
 '(font-lock-constant-face ((t (:foreground "#ED721E")))))
