(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(atom-one-dark))
 '(custom-safe-themes
   '("0c860c4fe9df8cff6484c54d2ae263f19d935e4ff57019999edbda9c7eda50b8" "ed68393e901a88b9feefea1abfa9a9c5983e166e4378c71bb92e636423bd94fd" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(display-line-numbers t)
 '(global-visual-line-mode t)
 '(menu-bar-mode nil)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")
     ("melpa" . "https://melpa.org/packages/")
     ("melpa-staple" . "https://stable.melpa.org/packages/")))
 '(package-selected-packages '(evil smart-mode-line-atom-one-dark-theme))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/atom-one-dark-theme/")
(load-theme 'atom-one-dark t)
; Enable Evil
(require 'evil)
(evil-mode 1)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))

;;Edit the arabic font in HTML and other editing while
;;type arabic and english togater.

(let ((ar-font "Noto Sans Arabic UI")
      (range '(#x000600 . #x0006FF)))
  (set-fontset-font "fontset-startup"  range ar-font)
  (set-fontset-font "fontset-default"  range ar-font)
  (set-fontset-font "fontset-standard" range ar-font))

;; Shortcuts with Yasnippet.
(add-to-list 'load-path
              "~/.emacs.d/elpa/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; Save the backup.
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs.d/backup/" user-emacs-directory))))

;; ORG Mode Style Shit.
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))