;; Code snippets
(define-skeleton python-skel-code-interact
  "Insert an if - else - end if region" nil
  > "import code" \n
  > "code.interact(local=dict(globals(), **locals()))" \n
  > "exit(1)")
(setq skeleton-end-hook nil)


;; TODO: actually do autocomplete
