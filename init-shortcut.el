;mo更新.emacs
(global-set-key (kbd "<f5>") 'eval-buffer)
(global-set-key (kbd "<f6>") 'man)
;区域反注释
;(global-set-key (kbd "<f6>") 'uncomment-region)
;目录替换
(global-set-key (kbd "<f8>") 'dired)
;标记
;(global-set-key (kbd "<f9>") 'set-mark-command)
(global-set-key (kbd "<f9>") 'revert-buffer-with-coding-system)
;多文件搜索
(global-set-key (kbd "<f11>") 'moccur-grep-find)
;比较
(global-set-key (kbd "<f7>") 'ediff-files)
;删除行尾空格
(global-set-key (kbd "<f12>") 'delete-trailing-whitespace)
;切换标签向前向后
(global-set-key (kbd "<C-tab>") 'tabbar-forward)
(global-set-key (kbd "<backtab>") 'tabbar-backward)
;日历
(global-set-key (kbd "C-x a") 'cfw:open-calendar-buffer)

(global-set-key (kbd "C-x c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-c o") 'occur)

;查单词
(global-set-key (kbd "C-c C-d") 'kid-star-dict)
