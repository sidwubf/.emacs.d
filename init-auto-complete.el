;(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(custom-set-variables
 '(ac-trigger-key "TAB")
 '(ac-auto-start t)
 '(ac-use-menu-map t))


