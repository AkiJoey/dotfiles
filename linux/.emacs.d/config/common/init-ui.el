;; tab space
(setq tab-width 4)

;; syntax highlight
(global-font-lock-mode t)

;; line highlight
(global-hl-line-mode t)

;; line number
(setq line-number-mode t)
(setq column-number-mode t)
(setq linum-format "%4d  ")
(global-linum-mode t)

;; line feed
(toggle-truncate-lines t)

;; display date
(display-time-mode t)

;; inhibit motd
;;(setq inhibit-splash-screen t)
;;(setq inhibit-startup-message t)

;; provide
(provide 'init-ui)
