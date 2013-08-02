(tool-bar-mode nil)
(menu-bar-mode t)
(setq inhibit-startup-message t)

(setq default-line-spacing 0)
(setq default-fill-column 90)
(setq default-major-mode 'text-mode)
(setq kill-ring-max 200)
(setq require-final-newline t) 

(global-font-lock-mode t)

(transient-mark-mode t)
(setq scroll-margin 5
      scroll-conservatively 10000)

(show-paren-mode t)
(setq show-paren-style 'parentheses)
(setq mouse-yank-at-point t)

(setq visible-bell nil)
(fset 'yes-or-no-p 'y-or-n-p)
(setq resize-mini-windows nil)
(setq enable-recursive-minibuffers t)

(setq column-number-mode t)

(setq-default make-backup-files nil)
(setq x-select-enable-clipboard t)
(setq indent-tabs-mode nil)
(setq tab-always-indent nil)
(setq tab-width 4)


;;shortcut
(global-set-key (kbd "C-t") 'set-mark-command)


;;packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'auto-complete)
;;(add-to-list 'ac-dictionary-directories "/home/leodt/.emacs.d/elpa/auto-complete-20120717/dict/")
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas/global-mode 1)

(require 'ibuffer)
(global-set-key ( kbd "C-x C-b ")' ibuffer)

(require 'ido)
(ido-mode t)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(require 'js3-mode)
(add-to-list 'ac-modes 'js3-mode)

;; web dev
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

(require 'sanityinc-tomorrow-eighties-theme)

(setq sgml-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(js3-auto-indent-p t)
 '(js3-enter-indents-newline t)
 '(js3-indent-level 4)
 '(js3-indent-on-enter-key t)
 '(js3-strict-inconsistent-return-warning nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
