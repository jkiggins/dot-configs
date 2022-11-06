(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
	
        ((boundp 'user-init-directory)
         user-init-directory)
	
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "melpa.el")
(load-user-file "autocomplete.el")
(load-user-file "indent.el")
(load-user-file "ctags.el")
(load-user-file "org-mode.el")

(load-user-file "personal.el")

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    '("c684e64b79a2fa042fa912b70ba14cd8da0a7175c06ac6791efee57b3209da50" default))
;;  '(org-agenda-files '("~/docs/notes/d3/todo.org"))
;;  '(package-selected-packages
;;    '(dot-mode latex-math-preview smart-tabs-mode pdf-tools meson-mode cuda-mode dockerfile-mode kconfig-mode markdown-preview-mode markdown-mode json-mode vlf multiple-cursors irony-eldoc company-irony naysayer-theme)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; (put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c684e64b79a2fa042fa912b70ba14cd8da0a7175c06ac6791efee57b3209da50" default))
 '(org-agenda-files '("~/docs/projects/research/todo.org"))
 '(package-selected-packages
   '(multiple-cursors dtrt-indent irony-eldoc company-irony naysayer-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
