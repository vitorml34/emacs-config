

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Replaces selected region when typing-pasting
(delete-selection-mode 1)

;; Set preferable initial modes
(menu-bar-mode -1)
(tool-bar-mode -1)
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

(defun my-comment-line ()
  (interactive)
  (comment-line nil)
  (previous-line)
  (move-beginning-of-line nil))
(global-set-key (kbd "C-q") 'my-comment-line)

(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))
