(add-to-list 'load-path "~/hacking-intro/site-lisp")

;;; better defaults
(set-language-environment "UTF-8")
(show-paren-mode 1)
(setq scroll-step 3)
(global-hl-line-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq ring-bell-function 'ignore)
(setq-default fill-column 120)
(winner-mode t)
(setq-default indent-tabs-mode nil)
(column-number-mode 1)
(setq auto-save-default nil)
(setq make-backup-files nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; auto save
(require 'super-save)
(super-save-mode t)

;;; window switching
(require 'window-numbering)
(window-numbering-mode t)

;;; avoid startup echo area message
(defun display-startup-echo-area-message ()
  (let ((resize-mini-windows t))
    (unless inhibit-startup-echo-area-message
      (message "%s" (startup-echo-area-message)))
    ))

(setq inhibit-startup-echo-area-message t)

;;; lisp
(require 'paredit)
(require 'rainbow-delimiters)
(require 'cl)

(add-hook 'emacs-lisp-mode-hook (lambda ()
                                  (paredit-mode t)
                                  (rainbow-delimiters-mode t)))

;;; typing game
(require 'speed-type)


;;; packages
(require 'package)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
