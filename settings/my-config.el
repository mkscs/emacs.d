(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; add stuff to PATH
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; disable fringe
(set-fringe-mode 0)

;; require theme
(require 'atom-one-dark-theme)


;; set captures dir
(setq org-default-notes-file (expand-file-name  "~/Dropbox/emacs/notes/notes.org"))

;; set font
(when (display-graphic-p)
  (set-frame-font "Menlo Regular-12"))


;; lighten comments
(set-face-attribute 'font-lock-comment-face nil :foreground "#6e7e98")
(set-face-attribute 'font-lock-comment-delimiter-face nil :foreground "#6e7e98")

;; start at full screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Kill scratch header
(setq initial-scratch-message nil)

;; start emacs opening my notes
(setq initial-buffer-choice "~/Dropbox/emacs/notes/main.org")

;; Set cursor color to white
(set-cursor-color "#ffffff")
(set-face-attribute 'isearch nil :foreground "white" :background "#359D84")
(set-face-attribute 'lazy-highlight nil :foreground "#FDE150" :background "#ED8979")

;; disable vertical-border - set to railscast dark theme background
(set-face-attribute 'vertical-border nil :foreground "#2b2b2b")

;; display matching parentheses
(show-paren-mode t)
(column-number-mode t)

;; limit line length at 80
(add-hook 'dired-mode-hook (lambda () (set (make-local-variable 'whitespace-mode) nil)))
;; enable tabs
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Auto-refresh dired on file change
(add-hook 'dired-mode-hook 'auto-revert-mode)

(provide 'my-config)

