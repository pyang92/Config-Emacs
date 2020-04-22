;;自设快捷键

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


(global-set-key (kbd "<C-tab>") 'hippie-expand)   ;高级补全
(global-set-key (kbd "C-c l") 'flycheck-list-errors) ;;显示全部语法错误

(global-set-key (kbd "H-w") #'aya-create)   
(global-set-key (kbd "H-y") #'aya-expand)  ;;auto-yasnippet


(provide 'init-keybinding)
