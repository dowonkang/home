(setq inhibit-startup-message t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

(when (eq system-type 'gnu/linux)
  (set-fontset-font t 'hangul (font-spec :name "NanumGothicCoding")))
