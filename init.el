;; Package.el customization
(package-initialize)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Switch off toolbar
(tool-bar-mode 0)

;; PLUGINS

;; evil-mode
(evil-mode 1)
(setq evil-default-cursor t)

;; linum-relative
(global-linum-mode 1)

;; SML-mode
(setenv "PATH" (concat "/usr/local/Cellar/smlnj/110.75/libexec/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/Cellar/smlnj/110.75/libexec/bin" exec-path))

;; Set color-theme
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-charcoal-black)))

;; APPEARENCE
(set-face-attribute 'default nil :height 130)
(set-cursor-color 'white)

(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq-default show-trailing-whitespace t)
(setq-default truncate-lines t)
