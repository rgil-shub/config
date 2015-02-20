;; ~/.emacs
;;
;; 20040928 

;; Language Enviroment
  (set-language-environment "Spanish")

 ;; frame title : set to buffer name
  (setq frame-title-format "emacs - %b")  
  (setq icon-title-format  "emacs - %b")

 ;; Display time and date on the status line
 ;;(setq display-time-day-and-date t)
  (display-time) 

 ;; Always end a file with a newline
  (setq require-final-newline t)

 ;; Colorea!
  (setq font-lock-maximum-decoration t)
  (global-font-lock-mode t)

 ;; Iluminame! (cuando seleccione algo)
  (transient-mark-mode t)

 ;; Parentesis
  (show-paren-mode t)

 ;; Make noise if the cursor is at an unmatched paren.
  (setq show-paren-ring-bell-on-mismatch t)

 ;; Visible bell - no beeping!
  (setq visible-bell t)

 ;; Display line and column number in the mode line
  (setq line-number-mode t)
  (setq column-number-mode t)

 ;; Use spaces instead of tabs to indent
  (setq-default indent-tabs-mode nil)

 ;; scrolling one line when point moves out
  (setq scroll-step 1)

 ;; sin barra de iconos
  (setq tool-bar-mode nil)

 ;; con barra de desplazamiento a la derecha  
  (set-scroll-bar-mode (quote right))


;; default frame
  (setq default-frame-alist
        '((width . 80) (height . 48)
          ;(font . "lucidasanstypewriter-12")
          (background-color . "darkslategrey")
          ;;(background-color . "black")
          (foreground-color . "wheat")
          (cursor-color . "lavender")))


;; Ada mode
;; ============================

;; Indentation
(setq ada-indent 3)
(setq ada-broken-indent 3)

;; Remove-trailing-spaces and untabify buffer before saving.
(setq ada-clean-buffer-before-saving t)


;; C mode
;; ============================

;; Kernighan & Ritchie C Style
;; with c-tab to 4 spaces
(setq c-default-style "k&r" c-basic-offset 4)

;; Tell cc-mode not to check for old-style (K&R) function declarations.
;; This speeds up indenting a lot.
(setq c-recognize-knr-p nil)

;; indents in left margin, otherwise insert TAB
;; (setq c-tab-always-indent nil)

; use windows style selection and copy/cut/paste
(require 'pc-select)
(pc-selection-mode)

(require 'cua-base)
(cua-mode)


;; short keys
;; ============================

(global-set-key [f1] 'help)
(global-set-key [f2] 'save-buffer)
(global-set-key [f3] 'compile)
(global-set-key [f4] 'speedbar-get-focus)
(global-set-key [(alt f4)] 'speedbar)
(global-set-key [f5] 'goto-line)
(global-set-key [(alt f5)] 'what-line)
(global-set-key [f6] 'grep)
(global-set-key [f7] 'previous-error)
(global-set-key [f8] 'next-error)
(global-set-key [f9] 'vm)
(global-set-key [(control tab)] 'bury-buffer)
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
(global-set-key [(control home)] 'beginning-of-buffer)
(global-set-key [(control end)] 'end-of-buffer)
(global-set-key [delete] 'delete-char)


;; Gentoo: emerge color-theme
;; (load "/usr/share/emacs/site-lisp/color-theme/color-theme.el")
;; (color-theme-gnome2)

;; dont show startup message
;; (setq inhibit-startup-message t)

;; highlight words during query replacement
;; (setq query-replace-highlight t)

;; highlight matches during search
;; (setq search-highlight t)

;; ensure all contents of minibuffer visible
;; (setq resize-minibuffer-mode t)

;; So we can see pound signs ok 
;; (standard-display-european t)
