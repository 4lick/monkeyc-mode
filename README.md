# Emacs Monkey C Mode

monkeyc-mode is a major mode for editing Monkey C file.
Adds syntax highlighting.

## Installation

Download the [monkeyc-mode.el][monkeyc-mode.el] and
save the file where Emacs can find it (i.e., a directory in your
`load-path`). You can then configure `monkeyc-mode` to load automatically by adding the following to your init file:

``` emacs-lisp
(add-to-list 'load-path "/your/path/to/monkeyc-mode/")
(require 'monkeyc-mode)
(add-to-list 'auto-mode-alist '("\\.mc\\'" . monkeyc-mode))
```

[monkeyc-mode.el]: https://github.com/4lick/monkeyc-mode/blob/master/monkeyc-mode.el
