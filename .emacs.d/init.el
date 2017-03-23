
;;; Emacs directory
;(when load-file-name
;    (setq user-emacs-directory (file-name-directory load-file-name)))
;
;(add-to-list 'custom-theme-load-path "~/.emacs.d/el-get/zenburn-emacs/")
;;(load-theme 'misterioso t)
;(load-theme 'zenburn t)
;
;;; el-get
;(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
;(unless (require 'el-get nil 'noerror)
;  (with-current-buffer
;      (url-retrieve-synchronously
;       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;    (goto-char (point-max))
;    (eval-print-last-sexp)))
;
;;; packages via el-get
;(el-get-bundle use-package)
;(el-get-bundle helm)
;(el-get-bundle helm-themes)
;(el-get-bundle bbatsov/zenburn-emacs)
;
;(el-get-bundle evil)
;(el-get-bundle evil-leader)
;(el-get-bundle company-mode/company-mode)
;(el-get-bundle elm-mode)
;
;(require 'evil)
;(evil-mode 1)
;(use-package evil
;  :config
;  (evil-mode 1)
;  (bind-keys
;    :map evil-insert-state-map
;    ("C-j" . evil-normal-state)
;    ("j j" . evil-normal-state)
;    )
;  )
;
;(require 'evil-leader)
;(require 'elm-mode)
;
;(require 'company)
;(use-package company
;  :config
;  (global-company-mode +1)
;  (add-to-list 'company-backends 'company-elm)
;  )
;
;;; default packages
;(require 'dired-x)
;
;(require 'whitespace)
;(global-whitespace-mode 0)
;(setq whitespace-style '(face tabs tab-mark space space-mark newline))
;;; set lcs=eol:$
;(setcar (nthcdr 2 (assq 'newline-mark whitespace-display-mappings)) [?$ ?\n])
;;; set lcs=tab:^\ ,
;;;(setcar (nthcdr 2 (assq 'tab-mark whitespace-display-mappings)) [?^ ?\t])
;;; set lcs=tab:^-,
;;;(setcar (nthcdr 2 (assq 'tab-mark whitespace-display-mappings)) [?^ ?- ?- ?- ?- ?- ?- ?-])
;;; set lcs=extends:<,precedes:<
;;;(set-display-table-slot standard-display-table 'truncation ?<)
;;; set nbsp:%
;;;setcar (nthcdr 2 (assq 'space-mark whitespace-display-mappings)) [?%])
;
;
;;; basic configuration
;
;(electric-indent-mode -1)
;(add-hook 'before-save-hook 'delete-trailing-whitespace)
;
;;; from "http://qiita.com/yn01/items/b8d3dcb5be9078a6e27f"
;
;(setq inhibit-startup-message t)
;(setq make-backup-files nil)
;(setq delete-auto-save-files t)
;
;(fset 'yes-or-no-p 'y-or-n-p)
;
;(setq-default tab-width 2 indent-tabs-mode nil)
;(setq eol-mnemonic-dos "(CRLF)")
;(setq eol-mnemonic-mac "(CR)")
;(setq eol-mnemonic-unix "(LF)")
;
;;; 複数ウィンドウを禁止する
;(setq ns-pop-up-frames nil)
;
;;; ウィンドウを透明にする
;;; アクティブウィンドウ／非アクティブウィンドウ（alphaの値で透明度を指定）
;(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))
;
;(menu-bar-mode -1)
;;;(tool-bar-mode -1)
;
;(column-number-mode t)
;(global-linum-mode t)
;(setq linum-format "%3d  ")
;
;(blink-cursor-mode 0)
;(show-paren-mode 1)
;
;;;  (global-hl-line-mode t)
;;; ウィンドウ内に収まらないときだけ、カッコ内も光らせる
;;;  (setq show-paren-style 'mixed)
;;;  (set-face-background 'show-paren-match-face "grey")
;;;  (set-face-foreground 'show-paren-match-face "black")
;
;
;(setq scroll-conservatively 1)
;;; シフト＋矢印で範囲選択
;;;  (setq pc-select-selection-keys-only t)
;;;  (pc-selection-mode 1)
;
;;; C-kで行全体を削除する
;;;  (setq kill-whole-line t)
;
;;; Macのキーバインドを使う
;;;  (mac-key-mode 1)
;;; Macのoptionをメタキーにする
;(setq mac-option-modifier 'meta)
;
;;; beep off
;(defun my-bell-function ()
;  (unless (memq this-command
;                '(isearch-abort abort-recursive-edit exit-minibuffer
;                keyboard-quit mwheel-scroll down up next-line previous-line
;                backward-char forward-char))
;    (ding)))
;(setq ring-bell-function 'my-bell-function)
