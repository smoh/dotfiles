;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;
;;

(setq doom-font (font-spec :family "Fira Mono" :size 14))

(map! :leader "o i" #'imenu-list-smart-toggle)

(after! org
  (setq org-directory "~/Dropbox/notes")
  (setq org-attach-directory "~/Dropbox/notes/files")
  )
