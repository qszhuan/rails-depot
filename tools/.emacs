    (add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")  
    (require 'color-theme)  
    (color-theme-initialize)  
 ;   (color-theme-blue-mood)  
(color-theme-tty-dark)
    (setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))  
    (require 'rails-autoload)  

; loads ruby mode when a .rb file is opened.
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
(require 'inf-ruby)

; Install mode-compile to give friendlier compiling support!
(add-to-list 'load-path "~/.emacs.d/")
(autoload 'mode-compile "mode-compile" "Command to compile current buffer file based on the major mode" t)
(global-set-key  "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile" "Command to kill a compilation launched by `mode-compile'" t)
 (global-set-key  "\C-ck" 'mode-compile-kill)