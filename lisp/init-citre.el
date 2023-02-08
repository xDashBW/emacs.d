;;; citre

;;;
;;; 全手动党
;;;

;;;
;;; 添加钩子
;;;
(add-hook 'python-mode-hook 'citre-mode)
(add-hook 'c-mode-hook 'citre-mode)
(add-hook 'c++-mode-hook 'citre-mode)

;;;
;;; 取消某些默认的快捷键
;;;

(provide 'init-citre)