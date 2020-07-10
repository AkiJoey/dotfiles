;; require
(require 'spaceline-config)

;; define segment
(spaceline-define-segment time
    "The current time."
    (format-time-string "%H:%M %p"))
(spaceline-define-segment date
    "The current date."
    (format-time-string "%h %d %a"))

;; spaceline theme
(spaceline-spacemacs-theme 'date 'time)

;; provide
(provide 'init-spaceline)
