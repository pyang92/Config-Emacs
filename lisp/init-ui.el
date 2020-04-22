
(load-theme 'monokai t)  ;;唯一的主题

;;----autoload的mode-----------------

(evil-mode 1)  ;;默认进入vi模式
(global-evil-leader-mode)
(window-numbering-mode 1)  ;;M-1,2,3:多窗口跳转(在左下角有窗口编号)

(ivy-mode 1)
(delete-selection-mode t)
(scroll-bar-mode -1)

(smartparens-global-mode t)  ;;(  ' " 自动成对
(global-linum-mode t)  ;显示行号
(global-company-mode t)  ;自动补全
(global-hl-line-mode t)  ;光标所在行高亮
(global-hungry-delete-mode t)   ;删除连续空格
(global-auto-revert-mode 1)  ;;自动加载外部修改过的文件


;; 修改变量调设置-----------------------

(setq ivy-use-virtual-buffers t)  
(setq inhibit-splash-screen 1)  ;无开机画面
(setq-default cursor-type 'bar)  ;光标模式
(setq make-backup-files nil)  ;无备份文件
(setq auto-save-default nil)  ;无备份文件
(setq c-default-style "linux")   ;;tabd空4格
(setq c-basic-offset 4)  ;;关闭缩进mode
(setq dired-recursive-deletes 'always)  ;;目录模式下，永远递归删除或复制
(setq dired-recursive-copies 'always)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)  ;括号高亮匹配
(fset 'yes-or-no-p 'y-or-n-p)  ;;用y/n 代表yes/no


;; 高级补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))


(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(require 'popwin)
(popwin-mode t)


;;----目录只占一个buffer-----------

(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(require 'dired-x)  ;;C-x C-j 进入当前buffer所在目录

(setq dired-dwim-target t)  ;;C-c 向另一屏幕目录复制

;;------------------------------

(provide 'init-ui)
