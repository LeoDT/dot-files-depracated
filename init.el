(tool-bar-mode 0)
(menu-bar-mode 1)
(setq inhibit-startup-message 1)
(setq initial-scratch-message "")
(column-number-mode 1)
(display-time-mode 1)
(show-paren-mode 1)

(setq default-line-spacing 0)
(setq default-fill-column 90)
(setq default-major-mode 'text-mode)
(setq kill-ring-max 200)
(setq require-final-newline 1)

(global-font-lock-mode 1)

(transient-mark-mode 1)
(setq scroll-margin 5
      scroll-conservatively 10000)

(show-paren-mode 1)
(setq show-paren-style 'parentheses)
(setq mouse-yank-at-point 1)

(setq visible-bell 0)
(fset 'yes-or-no-p 'y-or-n-p)
(setq resize-mini-windows 0)
(setq enable-recursive-minibuffers 1)

(setq column-number-mode 1)

(setq-default make-backup-files 0)
(setq x-select-enable-clipboard 1)
(setq indent-tabs-mode 0)
(setq tab-always-indent 0)
(setq tab-width 4)

(global-linum-mode 1)

;;shortcut
(global-set-key (kbd "C-t") 'set-mark-command)
(global-set-key (kbd "M-`") 'next-multiframe-window)

;;font
(set-default-font "Inconsolata 14")
(set-fontset-font "fontset-default" 'unicode "Microsoft Yahei 12")

;;Packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'auto-complete)
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
(setq-default js3-auto-indent-p 1)
(setq-default js3-enter-indents-newline 1)
(setq-default js3-indent-level 4)
(setq-default js3-indent-on-enter-key 1)

;; web dev
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4)))
(setq emmet-move-cursor-between-quotes t)

(projectile-global-mode)
(setq projectile-enable-caching t)

(require 'base16-eighties-theme)

(setq sr-speedbar-right-side nil)
(setq speedbar-use-images nil)
(setq sr-speedbar-max-width 26)
(setq sr-speedbar-width-x 22)

(make-face 'speedbar-face)
(set-face-font 'speedbar-face "Inconsolata 12")
(setq speedbar-mode-hook '(lambda () (buffer-face-set 'speedbar-face)))

(require 'indent-guide)
(indent-guide-global-mode)

(require 'bookmark+)

(cd "C:/datayes/trunk/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
