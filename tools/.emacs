    (add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")  
    (require 'color-theme)  
    (color-theme-initialize)  
;    (color-theme-blue-mood)  

    (setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))  
    (require 'rails-autoload)  

; loads ruby mode when a .rb file is opened.
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/linum")
(require 'linum)
(global-linum-mode 1)

(show-paren-mode 1)