(require 'racket-mode nil t)
(require 'evil-collection)

(defconst evil-collection-racket-mode-maps '(racket-mode-map
                                             racket-repl-mode-map))

(defun evil-collection-racket-mode-setup ()
  (evil-collection-define-key 'normal 'racket-mode-map
    "K" #'racket-repl-describe
    "gd" #'racket-repl-visit-definition
    (kbd "C-t") #'racket-unvisit))

(provide 'evil-collection-racket-mode)
