;; Use linux style
(setq c-default-style "linux"
      c-basic-offset 4)

;; Fix case indentation
(c-set-offset 'case-label '+)

;; Tabs stuff
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

;; Smart tabs for C
;;(smart-tabs-insinuate 'c)

;; Python function indentation
(setq python-indent-def-block-scale 1)
