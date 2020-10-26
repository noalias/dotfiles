(defvar init-root (file-truename "~/.emacs.d/lisp/")
  "The root directory of config files")

(push (and (or (file-exists-p init-root) (mkdir init-root))
           init-root)
     load-path)


;; pacakges setting, this setting must in the first place.
(require 'init-package)
;; edit
(require 'init-edit)
;; frame
(require 'init-frame)
;; keys
(require 'init-keys)
;; ui
(require 'init-theme)
;; elisp
(require 'init-elisp)
;; org
(require 'init-org)
;; misc
(require 'init-misc)

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
