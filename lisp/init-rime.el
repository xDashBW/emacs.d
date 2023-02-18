
(setq default-input-method 'rime)

(setq rime-user-data-dir "~/myrime_data/")

;; (setq rime-posframe-properties
;;       (list :background-color "#333333"
;;             :foreground-color "#dcdccc"
;;             :font "TsangerJinKai03-6763-13"
;;             :internal-border-width 10))

(setq default-input-method "rime")
(setq rime-show-candidate 'posframe)

(setq rime-disable-predicates '( ; 代码
                                rime-predicate-prog-in-code-p
                                ;; 任意符号开头
                                rime-predicate-punctuation-line-begin-p
                                ;; 在英文字符串之后（必须为以字母开头的英文字符串）
                                rime-predicate-after-alphabet-char-p

                                ;; 任意英文字符后
                                rime-predicate-after-ascii-char-p

                                ;; 在中文字符且有空格之后
                                rime-predicate-space-after-cc-p

                                rime-predicate-current-input-punctuation-p

                                ;; 将要输入的为大写字母时
                                rime-predicate-current-uppercase-letter-p
                                ))



(provide 'init-rime)