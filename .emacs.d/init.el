;; Load path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/inProgress/sicp/modules/")


;; Start-up set


;;;; Shortcut
(defalias 'f 'find-file)
(defalias 'r 'run-scheme)

;; Window
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-1") 'split-window-horizontally)
(global-set-key (kbd "M-0") 'delete-window)

(global-set-key (kbd "M-a") 'shrink-window-horizontally)
(global-set-key (kbd "M-d") 'enlarge-window-horizontally)

;; M-w SHOULD BE CHANGED (IT IS COPY KEY)
;(global-set-key (kbd "M-w") 'shrink-window)
(global-set-key (kbd "M-s") 'enlarge-window)

(global-set-key (kbd "M-f") 'find-file)

;; MIT Scheme
(global-set-key (kbd "M-r") 'run-scheme)


;; http://www.emacswiki.org/emacs/WindMove
;; replacement of C-x-o, just Shift-<arrow>
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))


;; To use MELPA repo
;; It is built in (bundled) emacs 24
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


;; MIT Scheme
(setq scheme-program-name "/usr/local/bin/scheme")
(require 'xscheme)


;; aggressive-indent-mode ( Auto indent )
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'css-mode-hook #'aggressive-indent-mode)
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)


;; for left side line numbers
(require 'linum)
(linum-mode 1)
(global-linum-mode 1)
(setq linum-format "%d ")


;; C++
(require 'cc-mode)
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
;;(require 'autopair)
;;(autopair-global-mode 1)
;;(setq autopair-autowrap t)


;; Haskell
(require 'package)
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/")))))

;; Scheme <- deactivated because for MIT Scheme
;(require 'quack)
;(custom-set-variables
;  ;; custom-set-variables was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
; '(gud-gdb-command-name "gdb --annotate=1")
; '(large-file-warning-threshold nil)
; '(quack-programs (quote ("xscheme" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "mzscheme" "racket" "racket -il typed/racket" "rs" "s" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))))
;(custom-set-faces
;  ;; custom-set-faces was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
; )
