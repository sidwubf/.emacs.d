(require 'php-doc nil t)
(setq php-doc-directory "/home/flash/manual/php-manual-en")
(add-hook 'php-mode-hook
          (lambda ()
            (local-set-key "\t" 'php-doc-complete-function)
            (local-set-key (kbd "\C-c h") 'php-doc)
            (set (make-local-variable 'eldoc-documentation-function)
                 'php-doc-eldoc-function)
            (eldoc-mode 1)))
