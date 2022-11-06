(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(setq org-duration-format 'h:mm)

(add-hook 'org-mode-hook #'auto-fill-mode)
(setq-default fill-column 80)

;; Function to save clipboard images an insert them
;; (defun org-insert-clipboard-image ()
;;   (interactive "F")
;;   (shell-command "xclip -selection clipboard -t image/png -o > .tmp.png")
;;   (shell-command "mv .tmp.png $(md5sum .tmp.png | awk '{ print $1 }')"
;;   (insert (concat "[[" file "]]"))
;;   (org-display-inline-images))
