(package-initialize)
(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

(defun self-get (pkg &optional min-version no-refresh)
  "Ask elpa to insatll PKG"
  (cond
   ((package-installed-p pkg min-version)
    t)
   ((or (assoc pkg package-archive-contents) no-refresh)
    (package-install package))
   (t
    (package-refresh-contents)
    (self-get pkg min-version t))))

(self-get 'org)
(self-get 'org-bullets)
(self-get 'pyim)
(self-get 'company)
;; (self-get 'paredit)
(self-get 'monokai-theme)
(self-get 'racer)
(self-get 'rust-mode)
(self-get 'ivy)
(self-get 'counsel)
(self-get 'swiper)
(self-get 'popwin) ;; required by youdao-dictionary
(self-get 'youdao-dictionary)
(self-get 'smartparens)


(provide 'init-package)
