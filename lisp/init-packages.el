;;自动装package

(require 'cl)

(when (>= emacs-major-version 24)
;;  (require 'package)
;;  (package-initialize)
;;    (add-to-list 'package-archives  '("gnu" . "http://elpa.gnu.org/packages/ "))
    (add-to-list 'package-archives  '("gnu-china" . "http://elpa.emacs-china.org/gnu/"))
    (add-to-list 'package-archives  '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
;;    (add-to-list 'package-archives  '("melpa-china" . "http://elpa.emacs-china.org/melpa/"))
)
;; --------------------------------

(defvar pyang/packages '(;; --- Better Editor ---
		      company
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      popwin
		      flycheck
		      yasnippet
		      yasnippet-snippets
		      auto-yasnippet
		      undo-tree
		      evil
		      evil-leader
		      window-numbering
		      ;; --- Major Mode ---
		      ;;exec-path-from-shell
		      ;; --- games ---
		      2048-game
		      ;; --- Themes ---
		      monokai-theme
		      ) "Default packages")

;;----------------------------------------------

(setq package-selected-packages pyang/packages)

(defun pyang/packages-installed-p ()
  (loop for pkg in pyang/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (pyang/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg pyang/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


(provide 'init-packages)
