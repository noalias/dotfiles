(require 'org)
(require 'org-tempo) ;;enable org tempo expends snippets, like '< s <TAB>' create a code block
(require 'org-bullets)
(add-hook 'org-mode-hook
	  (lambda () (org-bullets-mode 1)
	    (setq truncate-lines nil)))

;;; 设置org各项字体保持高度和宽度一致
(defvar font-height 1.2
  "为org-mode字体设置统一高度")
(defvar items '(org-level-1
		org-level-2
		org-level-3
		org-level-4
		org-level-5
		org-level-6
		org-level-7
		org-level-8
		)
  "需要设置face的项目")
(defun set-org-items-face (items)
  (dolist (face items)
    (set-face-attribute face nil
			:height font-height
			:weight 'normal)))
(set-org-items-face items)
;;;

(defconst regexp '("-[:multibyte:][:space:]('\"{" "-[:multibyte:][:space:].,:!?;'\")}\\[" "[:space:]" "." 1)
  "a regexp express for 'org-emphasis-regexp-components.")

(setq org-emphasis-regexp-components regexp;; 设置org行内编辑无须添加额外空格
      )
(org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)
(org-element-update-syntax)

;; unitil
(global-set-key (kbd "C-c l") 'org-stroe-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
;; key binding
;; (define-key org-mode-map (kbd "C-;") 'org-delete-backward-char)
;; (define-key org-mode-map (kbd "M-;") 'backward-kill-word)
;;; Link setting
(setq org-return-follows-link t	;; <Ret> can open the link or use <C-c C-o>
      
      ) 

;;; Source code edit
(add-to-list 'org-src-lang-modes '("rs" . rust)) ;; when edit code block, "rs" represents the rust-mode
(setq org-src-window-setup 'other-window ;; edit code in other window
      org-src-ask-before-returning-to-edit-buffer nil ;; disable the prompts in editor buffer      
      )

(provide 'init-org)
