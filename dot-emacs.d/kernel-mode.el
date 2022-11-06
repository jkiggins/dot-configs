(defun kernel-indent () (interactive) (
  (setq indent-tabs-mode t)
  (setq tab-width 8)
  (defvaralias 'c-basic-offset 'tab-width)))
