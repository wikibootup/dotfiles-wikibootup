;; Load path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/inProgress/sicp/modules/")


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
