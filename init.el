(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(backup-inhibited t t)
 '(column-number-mode t)
 '(delete-selection-mode t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil))

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

;; SML-mode
(setenv "PATH" (concat "/usr/local/Cellar/smlnj/110.75/libexec/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/Cellar/smlnj/110.75/libexec/bin" exec-path))

;; paredit
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)

;; highlight-parentheses
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)
(custom-set-variables '(hl-paren-colors (quote ("gold" "#0099FF" "#00FF00" "orange red" "dark magenta" "DarkOrchid1" "white"))))


;; midje-mode
(require 'midje-mode)
(add-hook 'clojure-mode-hook 'midje-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)

;; rainbow delimiters
;; (global-rainbow-delimiters-mode)

;; Set color-theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-charcoal-black)))

;; APPEARENCE
(set-face-attribute 'default nil :height 130)
(set-cursor-color 'white)

(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq-default truncate-lines t)

;; WHITESPACES
(setq-default show-trailing-whitespace t)
(require 'whitespace)
(add-hook 'after-save-hook 'whitespace-cleanup)
(setq whitespace-line-column 90)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

