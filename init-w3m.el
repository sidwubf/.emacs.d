(add-to-list 'load-path "~/.emacs.d/emacs-w3m")
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(setq w3m-use-cookies t)
(setq w3m-use-toolbar t)

;(setq w3m-default-display-inline-images t)
