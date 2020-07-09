;; require
(require 'sr-speedbar)

;; left frame
(add-hook 'speedbar-mode-hook
    (lambda ()
        (auto-raise-mode 1)
        (add-to-list 'speedbar-frame-parameters '(top . 0))
        (add-to-list 'speedbar-frame-parameters '(left . 0))
    )
)

;; display all file
(setq speedbar-show-unknown-files t)

;; sort tags
(setq speedbar-tag-hierarchy-method '(speedbar-prefix-group-tag-hierarchy))

;; provide
(provide 'init-sr-speedbar)
