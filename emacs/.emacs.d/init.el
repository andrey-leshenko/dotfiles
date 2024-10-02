(setq inhibit-splash-screen t)


;; Backups and Auto-saves

(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.emacs_backup/"))
 delete-old-versions t
 kept-new-versions 2
 kept-old-versions 2
 version-control t)

(setq auto-save-default nil)

;; Shortcuts

(defun find-user-init-file ()
  "Edit the `user-init-file', in another window."
  (interactive)
  (find-file-other-window user-init-file))

(global-set-key (kbd "C-c i") 'find-user-init-file)

;; Graphics

(set-face-attribute 'default nil :font  "DejaVu Sans Mono")
(set-frame-font "DejaVu Sans Mono" nil t)

(add-to-list 'custom-theme-load-path "~/emacs.d/themes")
(load-theme 'atom-one-dark t)
