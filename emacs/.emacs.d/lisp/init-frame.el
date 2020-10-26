;; set cursor type
(setq-default cursor-type 'bar)

(setq initial-frame-alist '((fullscreen . maximized)) ;; 最大化界面
      inhibit-splash-screen 1 ;; 取消帮助界面
      make-backup-files nil ;; 取消备份文件
      delete-auto-save-files t ;; 主动保存buffer时，删除自动保存的文件
      inhibit-startup-echo-area-message nil ;; 取消登陆时回显区的消息
      )

;; delete selection
(delete-selection-mode 1)
;; disable tool bar
(tool-bar-mode -1)
;; disbale menu bar
(menu-bar-mode -1)
;; close scroll bar
(and (boundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; show line number
(global-linum-mode 1)


(provide 'init-frame)
