(require-package 'smartparens)
(require-package 'company)

;; 设置smartparens-mode
(with-eval-after-load 'smartparens
  (require 'smartparens-config)
  (electric-pair-mode 1)
  )


;; 设置company-mode
(with-eval-after-load 'company
  (setq company-minimum-prefix-length 5)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map (kbd "C-n") 'company-select-next))


(provide 'init-edit)
