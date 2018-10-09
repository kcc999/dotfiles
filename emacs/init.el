(require 'package)

; List the packages you want
(setq package-list '(evil
                     evil-leader
		     powerline
		     nova-theme
		     sublimity
		     bongo
		     spacemacs-theme
		     solarized-theme
		     org
		     aggressive-indent
		     emmet-mode
		     nlinum-relative))

; Add Melpa as the default Emacs Package repository
; only contains a very limited number of packages
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

					; Activate all the packages (in particular autoloads)
(package-initialize)


					; Update your local package index
(unless package-archive-contents
  (package-refresh-contents))

					; Install all missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'powerline)
(powerline-default-theme)

(require 'sublimity)
(require 'sublimity-scroll)

(require 'bongo)
(define-bongo-backend vlc)
  :matcher '(local-file "vlc")

(require 'evil)
(evil-mode t)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "b" 'switch-to-buffer
  "w" 'save-buffer)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "2beaaef4f47f22c89948fdb3859799f8f2b64c1282ec21d71d6df49d68e68862" default)))
 '(fci-rule-color "#eee8d5")
 '(frame-background-mode (quote dark))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages (quote (dart-mode flycheck auto-complete evil-leader evil)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background "#3C4C55")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (\`
    ((20 \, "#DF8C8C")
     (40 \, "#e2978c")
     (60 \, "#e6a28d")
     (80 \, "#eaac8d")
     (100 \, "#eeb88e")
     (120 \, "#F2C38F")
     (140 \, "#edc78f")
     (160 \, "#e8cc90")
     (180 \, "#e3d091")
     (200 \, "#ded592")
     (220 \, "#DADA93")
     (240 \, "#d0d793")
     (260 \, "#c6d593")
     (280 \, "#bcd293")
     (300 \, "#b2d093")
     (320 \, "#A8CE93")
     (340 \, "#a0c7a3")
     (360 \, "#99c1b3")
     (380 \, "#91bbc4")
     (400 \, "#8ab5d4")
     (420 \, "#83AFE5")
     (440 \, "#87a9e4")
     (460 \, "#8ca3e3")
     (480 \, "#909ee2")
     (500 \, "#9598e1")
     (520 \, "#9A93E1"))))
 '(vc-annotate-very-old-color "#7b75b4")
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

(global-auto-complete-mode t)

(sublimity-mode 1) ;;for smooth scrolling

(set-frame-font "Fira Code")

;;bindings

(global-set-key [C-mouse-4] 'text-scale-increase)
(global-set-key [C-mouse-5] 'text-scale-decrease)

;;windmove

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;agressive-indent
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'css-mode-hook #'aggressive-indent-mode)

;;flycheck
(flycheck-mode)
(provide 'init)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.


(require 'nlinum-relative)
(nlinum-relative-setup-evil)                    ;; setup for evil
(add-hook 'prog-mode-hook 'nlinum-relative-mode)
(add-hook 'sgml-mode-hook 'nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0)      ;; delay
(setq nlinum-relative-current-symbol "")      ;; or "" for display current 
(setq nlinum-relative-offset 0)                 ;; 1 if you want 0, 2, 3...
;;; init.el ends here
