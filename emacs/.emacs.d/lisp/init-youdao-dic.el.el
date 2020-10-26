(with-eval-after-load 'youdao-dictionary
  (setq url-automatic-caching t
	youdao-dictionary-search-history-file "~/.emacs.d/.youdao")
  (require 'popwin)
  (popwin-mode 1)
  (push "*Youdao Dictionary*" popwin:special-display-config))

(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)

(provide 'init-youdao-dic.el)
