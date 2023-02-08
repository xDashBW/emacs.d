;;------------------------------------------------------------------
;; INSTALL
;;------------------------------------------------------------------
(add-to-list 'load-path "~/.myemacs.d/extensions/emacs-application-framework/")


(require 'eaf)
(require 'eaf-image-viewer)
(require 'eaf-terminal)
(require 'eaf-file-manager)
(require 'eaf-camera)
(require 'eaf-airshare)
(require 'eaf-music-player)
(require 'eaf-vue-demo)
(require 'eaf-2048)
(require 'eaf-rss-reader)
(require 'eaf-git)
(require 'eaf-demo)
(require 'eaf-system-monitor)
(require 'eaf-netease-cloud-music)
(require 'eaf-mindmap)
(require 'eaf-org-previewer)
(require 'eaf-file-sender)
(require 'eaf-pdf-viewer)
(require 'eaf-jupyter)
(require 'eaf-markdown-previewer)
(require 'eaf-file-browser)
(require 'eaf-video-player)
(require 'eaf-browser)

(global-set-key (kbd "s-h") 'eaf-open-file-manager)
(global-set-key (kbd "s-j") 'eaf-open-in-file-manager)
(global-set-key (kbd "s-k") 'eaf-open-terminal)

(setq browse-url-browser-function 'eaf-open-browser)
(setq eaf-goto-right-after-close-buffer t)



;; ============================================
;; 王勇大哥的配置
;; ============================================


;; Make `eaf-browser-restore-buffers' restore last close browser buffers.
(setq eaf-browser-continue-where-left-off t)

(eaf-bind-key undo_action "C-/" eaf-browser-keybinding)
(eaf-bind-key redo_action "C-?" eaf-browser-keybinding)
(eaf-bind-key scroll_up "M-j" eaf-browser-keybinding)
(eaf-bind-key scroll_down "M-k" eaf-browser-keybinding)
(eaf-bind-key scroll_up_page "M-n" eaf-browser-keybinding)
(eaf-bind-key scroll_down_page "M-p" eaf-browser-keybinding)
(eaf-bind-key open_link "M-h" eaf-browser-keybinding)
(eaf-bind-key open_link_new_buffer "M-H" eaf-browser-keybinding)
(eaf-bind-key insert_or_open_link_new_buffer "D" eaf-browser-keybinding)
(eaf-bind-key insert_or_open_link_background_buffer "F" eaf-browser-keybinding)
(eaf-bind-key watch-other-window-up-line "M-<" eaf-browser-keybinding)
(eaf-bind-key watch-other-window-down-line "M->" eaf-browser-keybinding)
(eaf-bind-key emacs-session-save "<f5>" eaf-browser-keybinding)
(eaf-bind-key refresh_page "M-r" eaf-browser-keybinding)

(setq eaf-webengine-default-zoom (if (> (frame-pixel-width) 3000) 2 1))
(setq eaf-browser-aria2-proxy-host "127.0.0.1")
(setq eaf-browser-aria2-proxy-port "9888")
(setq eaf-browser-enable-adblocker t)
(setq eaf-browser-enable-autofill t)
(setq eaf-music-play-order "random")
(setq eaf-marker-letters "JKHLNMUIOYPFDSAVCRREW")
(setq eaf-terminal-font-size 18)
(setq eaf-webengine-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-webengine-fixed-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-webengine-serif-font-family "TsangerJinKai03-6763")
(setq eaf-webengine-font-size 18)
(setq eaf-webengine-fixed-font-size 18)
(setq eaf-terminal-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-jupyter-font-family "WenQuanYi Micro Hei Mono")
(setq eaf-file-manager-show-hidden-file nil)
(setq eaf-music-default-file "/data/Music/")

(defun jekyll-start-server ()
  (interactive)
  (eaf-terminal-run-command-in-dir "jekyll serve --livereload" "/home/andy/manateelazycat.github.io"))

(defun jekyll-open-local ()
  (interactive)
  (eaf-open-browser "http://127.0.0.1:4000"))

(defun eaf-goto-left-tab ()
  (interactive)
  (sort-tab-select-prev-tab))

(defun eaf-goto-right-tab ()
  (interactive)
  (sort-tab-select-next-tab))

(defun eaf-translate-text (text)
  (popweb-dict-bing-input text))

(setq eaf-goto-right-after-close-buffer t)






(provide 'init-eaf)