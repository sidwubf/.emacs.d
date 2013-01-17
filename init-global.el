(add-to-list 'load-path "~/.emacs.d")
(autoload 'gtags-mode "gtags" "" t)

(add-hook 'php-mode-hook
    '(lambda ()
       (gtags-mode 1)
))
