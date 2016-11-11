;;; monkeyc-mode.el --- sample major mode for editing MonkeyC.

;; Copyright © 2016, by you

;; Author: 4lick
;; Version: 0.1.0
;; Created: 14 Jun 2016
;; Keywords: languages
;; Homepage: https://github.com/4lick/a

;; This file is not part of GNU Emacs.

;;; License:

;; You can redistribute this program and/or modify it under the terms of the GNU General Public License version 2.

;;; Code:

;; define several category of keywords
(setq monkeyc-keywords '("." ";" "?" ":" "class" "function" "return" "new" "var" "const" "module" "using" "as" "enum" "extends" "null" "native" "hidden" "static" "instanceof" "has" "if" "else" "do" "while" "for" "break" "continue" "switch" "default" "case" "try" "catch" "finally" "throw" "and" "or" "true" "false"))
(setq monkeyc-types '("float" "integer" "key" "list" "rotation" "string" "vector"))
(setq monkeyc-constants '("ACTIVE" "AGENT" "ALL_SIDES" "ATTACH_BACK"))
(setq monkeyc-events '("at_rot_target" "at_target" "attach"))
(setq monkeyc-functions '("llAbs" "llAcos" "llAddToLandBanList" "llAddToLandPassList"))

;; generate regex string for each category of keywords
(setq monkeyc-keywords-regexp (regexp-opt monkeyc-keywords 'words))
(setq monkeyc-type-regexp (regexp-opt monkeyc-types 'words))
(setq monkeyc-constant-regexp (regexp-opt monkeyc-constants 'words))
(setq monkeyc-event-regexp (regexp-opt monkeyc-events 'words))
(setq monkeyc-functions-regexp (regexp-opt monkeyc-functions 'words))

;; create the list for font-lock.
;; each category of keyword is given a particular face
(setq monkeyc-font-lock-keywords
      `(
        (,monkeyc-type-regexp . font-lock-type-face)
        (,monkeyc-constant-regexp . font-lock-constant-face)
        (,monkeyc-event-regexp . font-lock-builtin-face)
        (,monkeyc-functions-regexp . font-lock-function-name-face)
        (,monkeyc-keywords-regexp . font-lock-keyword-face)
        ;; note: order above matters, because once colored, that part won't change.
        ;; in general, longer words first
        ))

;;;###autoload
(define-derived-mode monkeyc-mode c-mode "monkeyc mode"
  "Major mode for editing Monkey C (Monkey C Language)…"

  ;; code for syntax highlighting
  (setq font-lock-defaults '((monkeyc-font-lock-keywords))))

;; clear memory. no longer needed
(setq monkeyc-keywords nil)
(setq monkeyc-types nil)
(setq monkeyc-constants nil)
(setq monkeyc-events nil)
(setq monkeyc-functions nil)

;; clear memory. no longer needed
(setq monkeyc-keywords-regexp nil)
(setq monkeyc-types-regexp nil)
(setq monkeyc-constants-regexp nil)
(setq monkeyc-events-regexp nil)
(setq monkeyc-functions-regexp nil)

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.mc\\'" . monkeyc-mode))

;; add the mode to the `features' list
(provide 'monkeyc-mode)

;; Local Variables:
;; coding: utf-8
;; End:

;;; monkeyc-mode.el ends here
