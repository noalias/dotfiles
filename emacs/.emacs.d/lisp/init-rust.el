(with-eval-after-load 'rust-mode
  ;; 启动rust时，设置次模式，仅一次
  (add-hook 'rust-mode-hook
	    (lambda ()
	      (setq indent-tabs-mode nil)
	      (smartparens-mode)
	      (racer-mode)))

  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (setq company-tooltip-align-annotations t)
  (setq rust-format-on-save t))



(with-eval-after-load 'racer
  (add-hook 'racer-mode-hook
	    (lambda ()
	      (eldoc-mode)
	      (company-mode))))



(provide 'init-rust)
