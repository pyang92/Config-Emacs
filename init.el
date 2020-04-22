;; 总设置文件，调用setting目录下的子模块

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")


(require 'init-packages)
(require 'init-ui)
(require 'init-code)
(require 'init-keybinding)



(setq custom-file (expand-file-name "lisp/custom.el"  user-emacs-directory))
(load-file custom-file)

(put 'downcase-region 'disabled nil)
