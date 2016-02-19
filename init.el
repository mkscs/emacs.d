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



