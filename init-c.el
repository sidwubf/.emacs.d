(add-to-list 'load-path "~/.emacs.d/cc-mode")
(require 'cc-mode)
;c mode
(setq-default c-basic-offset 4)
(setq c-default-style "linux" c-basic-offset 4)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

;gdb
(add-hook 'gdb-mode-hook '(lambda ()
                            (define-key c-mode-base-map [(f5)] 'gud-go)
                            (define-key c-mode-base-map [(f6)] 'gud-break)
                            (define-key c-mode-base-map [(f7)] 'gud-remove)
                            (define-key c-mode-base-map [(f8)] 'gud-next)
                            (define-key c-mode-base-map [(f9)] 'gud-cont)
                            (define-key c-mode-base-map [(f10)] 'gud-step)
                            (define-key c-mode-base-map [(f11)] 'gud-until)
                            (define-key c-mode-base-map [(f12)] 'gud-finish)))
