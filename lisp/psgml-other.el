;;;; psgml-other.el --- Part of SGML-editing mode with parsing support
;; $Id$

;; Copyright (C) 1994 Lennart Staflin

;; Author: Lennart Staflin <lenst@lysator.liu.se>

;; 
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.
;; 
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;; 
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.


;;;; Commentary:

;;; Part of psgml.el

;;; Menus for use with FSF Emacs 19


;;;; Code:

(require 'psgml)


;;;; SGML mode: keys and menus

;;; Menu bar

(defvar sgml-markup-menu (make-sparse-keymap "Markup"))
(fset 'sgml-markup-menu sgml-markup-menu)

(define-key sgml-mode-map [menu-bar sgml-dtd]
  (cons "DTD" (make-sparse-keymap "DTD")))

(define-key sgml-mode-map [menu-bar sgml-fold]
  (cons "Fold" (make-sparse-keymap "Fold")))

(define-key sgml-mode-map [menu-bar sgml-markup]
  '("Markup" . sgml-markup-menu ))

;;(define-key sgml-mode-map [menu-bar sgml-entities]
;;  '("Entities" . sgml-entities-menu))

;;(define-key sgml-mode-map [menu-bar sgml-tags]
;;  '("Tags" . sgml-tags-menu))

(define-key sgml-mode-map [menu-bar sgml]
  (cons "SGML" (make-sparse-keymap "SGML")))


;;; Sgml menu

(define-key sgml-mode-map [menu-bar sgml report-buf]
  '("Submit bug report" . sgml-submit-bug-report))
(define-key sgml-mode-map [menu-bar sgml save-options]
  '("Save options" . sgml-save-options))
(define-key sgml-mode-map [menu-bar sgml options]
  '("Options..." . sgml-options-menu))
(define-key sgml-mode-map [menu-bar sgml fill]
  '("Fill element        [C-c C-q]" . sgml-fill-element))
(define-key sgml-mode-map [menu-bar sgml normalize]
  '("Normalize                " . sgml-normalize))
(define-key sgml-mode-map [menu-bar sgml show-log]
  '("Show/hide warning log  [C-c C-l]" . sgml-show-or-clear-log))
(define-key sgml-mode-map [menu-bar sgml show-tags]
  '("List valid tags     [C-c C-t]" . sgml-list-valid-tags))
(define-key sgml-mode-map [menu-bar sgml change-name]
  '("Change element name  [C-c =]" . sgml-change-element-name))
(define-key sgml-mode-map [menu-bar sgml edit-attributes]
  '("Edit attributes     [C-c C-a]" . sgml-edit-attributes))
(define-key sgml-mode-map [menu-bar sgml next-trouble]
  '("Next trouble spot   [C-c C-o]" . sgml-next-trouble-spot)) 
(define-key sgml-mode-map [menu-bar sgml what-element]
  '("What element        [C-c C-w]" . sgml-what-element))
(define-key sgml-mode-map [menu-bar sgml show-context]
  '("Show context        [C-c C-c]" . sgml-show-context))
(define-key sgml-mode-map [menu-bar sgml insert-end-tag]
  '("End element         [C-c /]" . sgml-insert-end-tag))
(define-key sgml-mode-map [menu-bar sgml next-data]
  '("Next data field     [C-c C-d]" . sgml-next-data-field))


;;; DTD menu

(define-key sgml-mode-map [menu-bar sgml-dtd blank-c]
  '("" . nil))
(define-key sgml-mode-map [menu-bar sgml-dtd save]
  '("Save parsed DTD" . sgml-save-dtd))
(define-key sgml-mode-map [menu-bar sgml-dtd load]
  '("Load parsed DTD" . sgml-load-dtd))
(define-key sgml-mode-map [menu-bar sgml-dtd parse]
  '("Parse DTD" . sgml-parse-prolog))


;;; Fold menu

(define-key sgml-mode-map [menu-bar sgml-fold unfold-all]
  '("Unfold all       [C-c C-u C-a]" . sgml-unfold-all))
(define-key sgml-mode-map [menu-bar sgml-fold fold-region]
  '("Fold region      [C-c C-f C-r]" . sgml-fold-region))
(define-key sgml-mode-map [menu-bar sgml-fold expand]
  '("Expand           [C-c C-f C-x]" . sgml-expand-element))
(define-key sgml-mode-map [menu-bar sgml-fold unfold-element]
  '("Unfold element   [C-c C-u C-e]" . sgml-unfold-element))
(define-key sgml-mode-map [menu-bar sgml-fold unfold]
  '("Unfold line      [C-c C-s]" . sgml-unfold-line))
(define-key sgml-mode-map [menu-bar sgml-fold subfold]
  '("Fold subelement  [C-c C-f C-s]"   . sgml-fold-subelement))
(define-key sgml-mode-map [menu-bar sgml-fold fold]
  '("Fold element     [C-c C-f C-e]"   . sgml-fold-element))


;;; Markup menu

(define-key sgml-markup-menu [blank-c]
  '("" . nil))

(define-key sgml-markup-menu [ entity]
  (sgml-markup "<!entity ... >" "<!entity \r>\n"))
(define-key sgml-markup-menu [ attlist]
  (sgml-markup "<!attlist ... >" "<!attlist \r>\n"))
(define-key sgml-markup-menu [ element]
  (sgml-markup "<!element ... >" "<!element \r>\n"))

(define-key sgml-markup-menu [blank1]
  '("" . nil))

(define-key sgml-markup-menu [lv-comment]
  (sgml-markup "Local variables comment"
	       "<!--\nLocal variables:\n\rEnd:\n-->\n"))
(define-key sgml-markup-menu [ comment]
  (sgml-markup "Comment" "<!-- \r -->\n"))
(define-key sgml-markup-menu [ doctype]
  (sgml-markup "Doctype"
	       "<!doctype \r -- public or system -- [\n]>\n"))

(define-key sgml-markup-menu [blank2]
  '("" . nil))

(define-key sgml-markup-menu [ temp]
  (sgml-markup "TEMP marked section" "<![TEMP[\r]]>"))
(define-key sgml-markup-menu [ rcdata]
  (sgml-markup "RCDATA marked section" "<![RCDATA[\r]]>\n"))
(define-key sgml-markup-menu [ cdata]
  (sgml-markup "CDATA marked section" "<![CDATA[\r]]>\n"))
(define-key sgml-markup-menu [ ms]
  (sgml-markup "Marked section" "<![ [\r]]>\n"))

(define-key sgml-markup-menu [blank3]
  '("" . nil))

(define-key sgml-markup-menu [entities]
  '("Insert entity" . sgml-entities-menu))
(define-key sgml-markup-menu [tags]
  '("Insert tag" . sgml-tags-menu))


;;; Key commands

;; Doesn't this work in Lucid? ***
(define-key sgml-mode-map [?\M-\C-\ ] 'sgml-mark-element)

(define-key sgml-mode-map [S-mouse-1] 'sgml-tags-menu)


;;; Build custom menus
(defun sgml-build-custom-menus ()
  ;; Build custom menus
  (sgml-add-custom-entries
   sgml-markup-menu
   (mapcar (function (lambda (e)
		       (sgml-markup (car e) (cadr e))))
	   sgml-custom-markup))
  (sgml-add-custom-entries
   (lookup-key sgml-mode-map [menu-bar sgml-dtd])
   (mapcar (function
	    (lambda (e)
	      (cons (first e)
		    (` (lambda ()
			 (interactive)
			 (sgml-doctype-insert (,@ (cdr e))))))))
	   sgml-custom-dtd)))


(defun sgml-add-custom-entries (keymap entries)
  "Add to KEYMAP the ENTRIES, a list of (name . command) pairs.
The entries are added last in keymap and a blank line precede it."
  (let ((l keymap)
	(last (last keymap)))		; cons with keymap name
    ;; Find the cons before 'blank-c' event, or last cons.
    (while (and (cdr l)
		(consp (cadr l))
		(not (eq 'blank-c (caadr l))))
      (setq l (cdr l)))
    ;; Delete entries after
    (setcdr l nil)
    (when entries			; now add the entries
      (setcdr l
	      (cons
	       '(blank-c "")		; a blank line before custom entries
	       (loop for i from 0 as e in entries
		     collect (cons (intern (concat "custom" i)) e)))))
    ;; add keymap name to keymap
    (setcdr (last keymap) last)))


;;;; Provide

(provide 'psgml-other)

;;; psgml-other.el ends here