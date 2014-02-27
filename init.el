(tool-bar-mode 0)
(menu-bar-mode 1)
(setq inhibit-startup-message 1)
(setq initial-scratch-message "")
(column-number-mode 1)
(display-time-mode 1)
(show-paren-mode 1)
(setq ring-bell-function 'ignore)

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

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups
(setq x-select-enable-clipboard 1)
(setq-default indent-tabs-mode nil)
(setq-default tab-always-indent 0)
(setq-default tab-width 4)

;; (global-linum-mode 1)

;;shortcut
(global-set-key (kbd "C-t") 'set-mark-command)
(global-set-key (kbd "M-`") 'next-multiframe-window)

;;font
(prefer-coding-system 'utf-8)
(set-default-font "Inconsolata 14")
(set-fontset-font "fontset-default" 'unicode "Hiragino Sans GB 14")

;;Packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; (require 'yasnippet)
;; (yas/global-mode 1)

(require 'ibuffer)
(global-set-key ( kbd "C-x C-b ")' ibuffer)

(require 'ido)
(ido-mode t)
(require 'flx-ido)
(flx-ido-mode 1)
(setq ido-use-faces nil)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(require 'js3-mode)
(add-to-list 'ac-modes 'js3-mode)
(setq-default js3-auto-indent-p 1)
(setq-default js3-enter-indents-newline 1)
(setq-default js3-indent-level 4)
;; (setq-default js3-indent-on-enter-key 1)
(setq-default js3-consistent-level-indent-inner-bracket 1)

;; web dev
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4)))
(setq emmet-move-cursor-between-quotes t)

;; (add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
;; (defun web-mode-hook ()
;;   "Hooks for Web mode."
;;   (setq web-mode-markup-indent-offset 4)
;; )
;; (add-hook 'web-mode-hook  'web-mode-hook)

(setq sgml-basic-offset 4)
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . sgml-mode))

(projectile-global-mode)

(require 'base16-eighties-theme)

(setq sr-speedbar-right-side nil)
(setq speedbar-use-images nil)
(setq sr-speedbar-max-width 26)
(setq sr-speedbar-width-x 22)

(make-face 'speedbar-face)
(set-face-font 'speedbar-face "Inconsolata 12")
(setq speedbar-mode-hook '(lambda () (buffer-face-set 'speedbar-face)))

;; (require 'indent-guide)
;; (indent-guide-global-mode)

(require 'bookmark+)

(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

(require 'popwin)
(popwin-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(column-number-mode 1)
 '(display-time-mode t)
 '(js3-boring-indentation t)
 '(show-paren-mode t)
 '(sr-speedbar-auto-refresh nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
