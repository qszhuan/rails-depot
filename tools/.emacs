    (add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")  
    (require 'color-theme)  
    (color-theme-initialize)  
    (color-theme-blue-mood)  
;    (color-theme-pok-wog)
    (setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))  
    (require 'rails-autoload)  

    ; loads ruby mode when a .rb file is opened.
    (autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
    (setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
    (require 'inf-ruby)

    (add-to-list 'load-path "~/.emacs.d/linum")
    (require 'linum)
    (global-linum-mode 1)

    (show-paren-mode 1)
   ;(auto-save-mode -1)
    (setq auto-save-default nil)

   (fset 'yes-or-no-p 'y-or-n-p)

(autoload 'mode-compile "mode-compile" "Command to compile current buffer file based on the major mode" t)
(global-set-key  "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile" "Command to kill a compilation launched by `mode-compile'" t)
 (global-set-key  "\C-ck" 'mode-compile-kill)

(global-set-key [f1] 'info)
(global-set-key [f2] 'undo)
(global-set-key [f3] 'redo)
(global-set-key [f4] 'kill-this-buffer)
(global-set-key [f5] 'eshell)
(global-set-key [f6] 'dird-jump)
(global-set-key [f7] 'compile)
(global-set-key [(home)] 'beginning-of-buffer)
(global-set-key [(end)] 'end-of-buffer)