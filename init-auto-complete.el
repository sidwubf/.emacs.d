;(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(custom-set-variables
 '(ac-trigger-key "TAB")
 '(ac-auto-start t)
 '(ac-use-menu-map t))

(require 'auto-complete-clang)

(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
;(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
	(setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)

(add-hook 'espresso-mode-hook 'ac-espresso-mode-setup)
(add-hook 'html-mode-hook 'ac-html-mode-setup)
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
      (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(my-ac-config)
