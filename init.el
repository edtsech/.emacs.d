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


;(global-linum-mode t)


(setq haskell-program-name "cabal-dev ghci")

;; Fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

;; Package.el customization
(package-initialize)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; PLUGINS

;; Evil-mode
(require 'evil)
(require 'evil-paredit)
;(add-hook 'evil-insert-state-entry-hook 'linum-relative-toggle)
;(add-hook 'evil-insert-state-exit-hook 'linum-relative-toggle)
(evil-mode 1)
(setq evil-default-cursor t)

;; paredit
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)

;; highlight-parentheses
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))

(custom-set-variables '(hl-paren-colors (quote ("orange" "yellow" "greenyellow" "green" "springgreen" "cyan" "slateblue" "magenta" "purple"))))
;(custom-set-variables '(hl-paren-colors (reverse (quote ("greenyellow" "green" "springgreen" "cyan")))))
;(custom-set-variables '(hl-paren-colors (quote ("cyan"))))
;(custom-set-variables '(hl-paren-colors (reverse (quote ("#B7E6FD" "#9EDEFD" "#7DD2FB" "#297BA3")))))

(add-hook 'clojure-mode-hook 'highlight-parentheses-mode)

;; midje-mode
(require 'midje-mode)
(add-hook 'clojure-mode-hook 'midje-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)

;; rainbow delimiters
;; (global-rainbow-delimiters-mode)

;; nrepl
(setenv "PATH" (concat (getenv "HOME") "/bin:" (getenv "PATH")))
(setq exec-path (cons "~/bin" exec-path))
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "*nrepl*")
(add-hook 'nrepl-mode-hook 'paredit-mode)

;; Auto complete
;; (require 'auto-complete-config)
;; (ac-config-default)

;; Super Tab
(require 'smart-tab)
(global-smart-tab-mode 1)

;; Linum relative
(require 'linum-relative)
(set-face-foreground 'linum-relative-current-face nil)
(set-face-background 'linum-relative-current-face nil)

;; APPEARENCE

;; Set color-theme
(require 'color-theme)
(color-theme-initialize)
(eval-after-load "color-theme"
  '(progn
     ;(color-theme-initialize)
     ;(color-theme-charcoal-black)
     ;(color-theme-sanityinc-tomorrow-day)
     (color-theme-sanityinc-tomorrow-eighties)
     ))

(set-face-attribute 'default nil :height 130)
(set-cursor-color 'white)

(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq-default truncate-lines t)

;; Parenface
;(require 'parenface)
;(set-face-foreground 'paren-face "gray40")
;(add-hook 'clojure-mode-hook (paren-face-add-support clojure-font-lock-keywords))

(defface esk-paren-face
   '((((class color) (background dark))
      (:foreground "grey40"))
     (((class color) (background light))
      (:foreground "grey55")))
   "Face used to dim parentheses."
   :group 'starter-kit-faces)

(font-lock-add-keywords 'clojure-mode
                        '(("(\\|)" . 'esk-paren-face)))

;; WHITESPACES
(require 'whitespace)
(add-hook 'after-save-hook 'whitespace-cleanup)
(setq whitespace-line-column 90)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; Set Speclj indentaion
(put 'describe 'clojure-backtracking-indent '(4 2))
(put 'it 'clojure-backtracking-indent '(4 2))
(put 'before 'clojure-backtracking-indent '(2))
(put 'before-all 'clojure-backtracking-indent '(2))
(put 'after-all 'clojure-backtracking-indent '(2))
(put 'after 'clojure-backtracking-indent '(2))

;; Set Compojure indentation
(put 'GET 'clojure-backtracking-indent '(4 4 2))
(put 'POST 'clojure-backtracking-indent '(4 4 2))
(put 'PUT 'clojure-backtracking-indent '(4 4 2))
(put 'DELETE 'clojure-backtracking-indent '(4 4 2))
(put 'PATCH 'clojure-backtracking-indent '(4 4 2))
