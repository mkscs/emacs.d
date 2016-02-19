;; to prevent myself from using arrows
(global-set-key (kbd "<down>") (ignore-error-wrapper 'windmove-down))
(global-set-key (kbd "<up>") (ignore-error-wrapper 'windmove-up))
(global-set-key (kbd "<left>") (ignore-error-wrapper 'windmove-left))
(global-set-key (kbd "<right>") (ignore-error-wrapper 'windmove-right))

;; sets the osx cmd as META
(setq mac-command-modifier 'meta)

;; C-cd for dash-at-point
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)

;; C-cc for captures
(define-key global-map "\C-cc" 'org-capture)

;; multiple-cursors
(global-set-key (kbd "C-c C-l") 'mc/edit-lines)
(global-set-key (kbd "C-c C->") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)


(provide 'my-keybindings)
