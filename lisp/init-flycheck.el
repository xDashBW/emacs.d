

;;;
;;; 添加 hook
;;;
(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)

(provide 'init-flycheck)