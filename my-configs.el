;; After adding it to your load path, use the line below
;; (load "my-emacs-configs/my-configs") 

;; Setting theme
(custom-set-variables
 '(custom-enabled-themes '(tango-dark)))
(custom-set-faces)

;; Replaces selected region when typing-pasting
(delete-selection-mode 1)

;; Hide bars
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Show matching parenthesis
(show-paren-mode 1)

;; My functions for scrolling up and down and keeping the cursor position
(defun my-scroll-down-and-center ()
  (interactive)
  (move-beginning-of-line nil)
  (scroll-down-line)
  (previous-line))

(defun my-scroll-up-and-center ()
  (interactive)
  (move-beginning-of-line nil)
  (scroll-up-line)
  (next-line))
(global-set-key (kbd "C-<up>") 'my-scroll-down-and-center)
(global-set-key (kbd "C-<down>") 'my-scroll-up-and-center)

;; Binding comment-line to preferred keys. Also don't skip current line and go to 1st position
(defun my-comment-line ()
  (interactive)
  (comment-line nil)
  (previous-line)
  (move-beginning-of-line nil))
(global-set-key (kbd "C-q") 'my-comment-line)

;; When splitting window automatically go to new one
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;; Automatically moves the focus to buffer list when it's opened
(global-set-key "\C-x\C-b" (lambda () (interactive)(list-buffers nil) (other-window 1)))
