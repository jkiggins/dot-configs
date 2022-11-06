;; force myself to learn to use the plain keyboard mappings
(global-set-key (kbd "<up>") nil)
(global-set-key (kbd "<down>") nil)
(global-set-key (kbd "<left>") nil)
(global-set-key (kbd "<right>") nil)
(global-set-key (kbd "<next>") nil)
(global-set-key (kbd "<prior>") nil)

;; stop the ctrl-z nonsense
(global-unset-key (kbd "C-z"))

;; ;; Theme is safe
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    '("c684e64b79a2fa042fa912b70ba14cd8da0a7175c06ac6791efee57b3209da50" default))
;;  '(package-selected-packages
;;    '(multiple-cursors dtrt-indent irony-eldoc company-irony naysayer-theme)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; Style
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Only load theme in graphical mode
(if (display-graphic-p)
    (load-theme 'misterioso)
  (load-theme 'manoj-dark))

(global-display-line-numbers-mode)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
;;(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; Don't save backups in cwd
(setq
    backup-by-copying t
    backup-directory-alist '(("." . "~/.emacs.d/.saves")))

;; Multi-line edit
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

;; Sessions
(setq confirm-kill-emacs 'y-or-n-p)

;; Spell checking
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

;; Highlight parenthesis
(show-paren-mode 1)

;; ido
(ido-mode)
(setq ido-enable-flex-matching t)

;; ediff split vertical
(setq ediff-split-window-function (quote split-window-horizontally))
