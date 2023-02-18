;;; ggtags

;;; 默认就是保存更新

;;;
;;; C/C++ 时进入 ggtags mode, 激活 ggtags-* 函数函数, 以使用快捷键
;;; Python 等用不了 Ggtags
(add-hook 'c-mode-hook 'ggtags-mode)
(add-hook 'c++-mode-hook 'ggtags-mode)

;;;
;;; 把 ggtags-mode 下的一些默认快捷键取消,
;;; 例如, 还有 M-. M-? 等系统默认的, 不要覆盖
;;;
(with-eval-after-load 'ggtags
  (define-key ggtags-mode-map (kbd "M-]") nil)
  (define-key ggtags-mode-map (kbd "M-.") nil)
  (define-key ggtags-mode-map (kbd "M-?") nil)
  (define-key ggtags-navigation-mode-map (kbd "M-n") nil)
  (define-key ggtags-navigation-mode-map (kbd "M-p") nil)
  )

;;;
;;; ggtags-mode 启动时做些工作, 做些检查之类的
;;;
(defun my-ggtags-mode-hook-setup ()
  (interactive)
  ;; 暂时没有
  )
(add-hook 'ggtags-mode-hook 'my-ggtags-mode-hook-setup)

(provide 'init-ggtags)
