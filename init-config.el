(setq user-full-name "wubofeng")
(setq user-mail-address "wubofengwbf@gmail.com")

;取消bell
(setq visible-bell t)
;取消欢迎界面
(setq inhibit-startup-message t)
;显示列数
(setq column-number-mode t)
;保存操作数
(setq kill-ring-max 250)
;使跳页不僵硬
(setq scroll-margin 3
      scroll-conservatively 10000)
(customize-set-variable 'scroll-bar-mode 'right)
;光标移动到鼠标，鼠标自动移开
;(mouse-avoidance-mode 'animate)
(fset 'yes-or-no-p 'y-or-n-p)
;隐藏工具栏
(tool-bar-mode -1)
;(menu-bar-mode nil)
(setq indent-tabs-mode nil)
(setq-default tab-width 4)
(setq frame-title-format
            '("emacs@ " (buffer-file-name "%f "
                (dired-directory dired-directory "%b"))))
(setq default-frame-alist '((height . 45) (width . 110)))
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(global-linum-mode t)
(setq-default case-fold-search nil)
;设置~文件目录
(setq backup-directory-alist (quote (("." . "~/backups"))))
(setq version-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 5)
(setq delete-old-versions t)
(setq backup-directory-alist '(("." . "~/backups")))
(setq backup-by-copying t)

(setq display-time-day-and-date t)
(display-time)
