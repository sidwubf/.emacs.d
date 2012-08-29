(require 'php-mode)
(add-auto-mode 'php-mode "\\.php[345]?\\'\\|\\.phtml\\." "\\.(inc|tpl)$" "\\.module$")
(add-hook 'php-mode-hook 'flymake-php-load)

(provide 'init-php)

(setq c-basic-offset 4)
(setq indent-tabs-mode nil)

