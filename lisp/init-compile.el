;;; ---- 研究怎么快速的编译代码 ---

(defun ccompile ()
  (interactive)
  (compile (format
            "g++ -o %s %s -g -lm -std=c++11 -O2 -Wall"
            (file-name-sans-extension (file-name-nondirectory buffer-file-name))
           (file-name-nondirectory buffer-file-name))))

(defun crun ()
  (interactive)
  (compile (format
            "./%s" (file-name-sans-extension (file-name-nondirectory buffer-file-name)))))

;;; 执行文件
(global-set-key (kbd "M-g 9") 'ccompile)
;;; 执行
(global-set-key (kbd "M-g 5") 'crun)

(provide 'init-compile)