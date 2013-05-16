# Clojure Emacs Setup

It's basic ~100 lines setup for non Emacs users who don't have productive Clojure environment yet
and ready to try Emacs as an editor primarelly for Clojure development or just thinkering.

![look](/image.png)

## Features

### Active

* Paredit
* Parentheses highlighting
* NREPL
* Auto Completion

### Switched off by deafult

* Line numbers
* Relative line numbers
* Vim-mode
* Whitespaces cleaning

## Installation

1. Download Emacs
  1. [Emacs for MacOS](http://emacsformacosx.com/)
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

### Customization ??
