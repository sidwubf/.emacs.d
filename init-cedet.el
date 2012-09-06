(load-file "~/.emacs.d/cedet/common/cedet.el")

(global-ede-mode 1)

(semantic-load-enable-excessive-code-helpers)

(require 'semantic-ia)
(require 'semantic-gcc)

(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

(require 'semanticdb)
(global-semanticdb-minor-mode 1)

(when (cedet-gnu-global-version-check t)
  (require 'semanticdb-global)
  (semanticdb-enable-gnu-global-databases 'c-mode)
  (semanticdb-enable-gnu-global-databases 'c++-mode))

(when (cedet-ectag-version-check)
  (semantic-load-enable-primary-exuberent-ctags-support))

(defun my-cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'my-cedet-hook)

(defun my-c-mode-cedet-hook ()
 (local-set-key "." 'semantic-complete-self-insert)
 (local-set-key ">" 'semantic-complete-self-insert))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;(ede-cpp-root-project "Test"
;                :name "Test Project"
;                :file "~/work/project/CMakeLists.txt"
;                :include-path '("/"
;                                "/Common"
;                                "/Interfaces"
;                                "/Libs"
;                               )
;                :system-include-path '("~/exp/include")
;                :spp-table '(("isUnix" . "")
;                             ("BOOST_TEST_DYN_LINK" . "")))
