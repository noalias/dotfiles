;; set input
(require 'pyim)
(require 'pyim-basedict)
(require 'posframe)
(pyim-basedict-enable)
(setq default-input-method "pyim")
(setq pyim-default-scheme 'quanpin)
(setq-default pyim-english-input-switch-functions
	      '(pyim-probe-dynamic-english
		pyim-probe-isearch-mode
		pyim-probe-program-mode
		pyim-probe-org-structure-template))
(setq-default pyim-punctuation-half-width-functions
	      '(pyim-probe-punctuation-line-beginning
	       pyim-probe-punctuation-after-punctuaction))
(pyim-isearch-mode 1) ;; 开启搜索模式
(setq pyim-page-tooltip 'posframe) ;; 使用posframe框架
(setq pyim-page-length 5) ;; 词选框最大5个词
(setq pyim-punctuation-translate-p '(auto yes no)) ;;自动中文使用全角标点，英文使用半角
(global-set-key (kbd "M-j") 'pyim-convert-string-at-point)
;; (global-set-key (kbd "C-;") 'pyim-delete-world-from-personal-buffer)
(global-set-key (kbd "C-\\") 'toggle-input-method)
(provide 'init-pyim)
