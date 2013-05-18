# Clojure Emacs Setup

It's basic ~100 lines setup for non Emacs users.

![look](/image.png)

## Features

### Active

* Clojure mode
* Paredit
* Parentheses highlighting
* NREPL
* Auto Completion
* Lisp indentation

### Switched off by deafult

* Line numbers
* Relative line numbers
* Vim-mode
* Whitespaces cleaning

## Installation

1. Download Emacs
  1. [Emacs for MacOS](http://emacsformacosx.com/)
  2. Linux
  3. Windows
2. `git clone ... ~/.emacs.d`

## Usage

### Emacs basics

* `C-x C-f` - "find" file i.e. open/create a file in buffer
* `C-x b`   - create/switch buffers
* `C-x C-b` - show buffer list
* `C-x k`   - kill buffer
* `C-x 2`   - split window horizontally
* `C-x 3`   - split window vertically
* `C-x 0`   - close current window(split)

[Full Emacs Command List](http://cse.unl.edu/~choueiry/S08-476-876/Documents/emacs_ref.html)

### Plugins

#### Paredit

1. `C-<right>` (def) a -> (def a)
2. `C-<left>`  (def a) -> (def) a

[Paredit Cheetsheet](http://www.emacswiki.org/emacs/PareditCheatsheet)

#### Auto completion

Just use `tab` key.

#### NREPL

`M` - is meta key, can be redefined, but usually its Alt key 

1. `C-c M-j` or `M-x nrepl-jack-in` - connect to nREPL
2. `C-M-x` - evaluate the top level form

[NREPL Keyboard shortcuts](https://github.com/kingtim/nrepl.el#keyboard-shortcuts)

### Customize

#### Indentation

``` clj
;; Set Compojure indentation
;; (put <macro|function> 'clojure-backtracking-indent '(<indent-first-arg> <indent-second-arg> ...)
(put 'GET 'clojure-backtracking-indent '(2 2 2))
(put 'POST 'clojure-backtracking-indent '(2 2 2))
(put 'PUT 'clojure-backtracking-indent '(2 2 2))
(put 'DELETE 'clojure-backtracking-indent '(2 2 2))
(put 'PATCH 'clojure-backtracking-indent '(2 2 2))
```
