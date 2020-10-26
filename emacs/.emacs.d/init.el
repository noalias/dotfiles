;;; definitions
(defvar startup-time (current-time)
  "Note the start time of load config files")

(defvar init-root (file-truename "~/.emacs.d/lisp/")
  "The root directory of config files")

(defvar init-files (and (or (file-exists-p init-root)
			      (mkdir init-root))
			  (concat init-root "%s.el"))
  "Config files")

(defvar entry-file (file-truename "~/forMe/ToDo.org")
  "The file to be visited first") 

(defun self-require (pkg &optional disable)
  "load my config files"
  (or disable
      (let ((file (file-truename (format init-files pkg))))
	(or (file-exists-p file)
	    (write-region (format "(provide '%s)" pkg) nil file))
	(load file t nil t))))

;; pacakges setting, this setting must in the first place.
(self-require 'init-package)
;; edit
(self-require 'init-edit)
;; frame
(self-require 'init-frame)
;; keys
(self-require 'init-keys)
;; ui
(self-require 'init-theme)
;; eshell
(self-require 'init-eshell t)
;; rust
(self-require 'init-rust)
;; elisp
(self-require 'init-elisp)
;; org
(self-require 'init-org)
;; misc
(self-require 'init-misc)
;; pyim
(self-require 'init-pyim)
;; ivy
(self-require 'init-ivy)
;; youdao
(self-require 'init-youdao-dic.el)

(setq initial-buffer-choice
      (and (file-exists-p entry-file) entry-file))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (popwin youdao-dictionary dashboard ivy smartparens hungry-delete company org pyim undo-tree evil monokai-theme lsp-mode rust-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-link ((t (:foreground "#AE81FF" :underline nil :weight normal :height 1.2)))))
