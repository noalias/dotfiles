(with-eval-after-load 'elisp-mode
  (add-hook 'emacs-lisp-mode-hook
	    (lambda ()
	      (smartparens-mode 1)
	      (company-mode 1)))
  )



(provide 'init-elisp)
