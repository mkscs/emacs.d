;; Main configuration
(package-initialize)

(add-to-list 'load-path (expand-file-name "settings/" user-emacs-directory))
(load "helpers/my-helpers.el")
(require 'my-config)
(require 'my-keybindings)
(require 'my-packages)
(load "packages/my-ido.el")
(load "packages/my-smex.el")
(load "packages/my-robe.el")
(load "packages/my-company.el")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#444444"))))
 '(company-scrollbar-fg ((t (:background "#373737"))))
 '(company-tooltip ((t (:inherit default :background "#303030"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(font-lock-constant-face ((t (:foreground "#ED721E")))))
