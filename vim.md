# VIM

#### General
* `:w filename` - save file as *filename*
* `wq` - save and quit
* `q!` - quit without saving
* `<Leader><Leader>` - switch between last two files
* `.` - repeat last command
* `:noh` - clear highlighting

#### Traversing files
* `{`, `}` - jump paragraph
* `<Ctrl-d/u>` - jump half-screen
* `<Ctrl-f/b>` - jump screen
* `<Ctrl-e/y>` - scroll
* `w` - next word
* `W` - next space-separated word
* `b/e` - beginning/end of word
* `B/e` - beginning/end of space-separated word
* `0` - end of line
* `$` - beginning of line
* `:n` - line number *n*
* `H` - first line of screen
* `M` - middle line of screen
* `L` - last line of screen

#### Inserting
* `<Ctrl-n>` - autocompletion
* `i` - insert before cursor
* `I` - insert at beginning of line
* `a` - insert after cursor
* `A` - insert at end of line
* `o` - create new line below
* `O` - create new line above
* `C` - clear rest of line
* `r` - overwrite one character
* `R` - overwrite

#### Deleting
* `x` - delete character
* `X` - delete character before cursor

#### Editing
* `v` - enter visual mode
* `V` - enter visual mode and highlight line
* `J` - join lines
* `o` - jump to start/end of selection
* `~` - change case
* `< (V)` - deindent
* `> (V)` - indent
* `dd` - cut/delete line without highlighting
* `yy` - copy line without highlighting
* `x` - cut/delete
* `y` - copy
* `p` - paste after cursor
* `P` - paste before cursor
* `<F2>` - toggle pastemode for when pastung text from outside vim

#### Undo & Redo
* `u` - undo
* `<Ctrl-r>` - redo

#### Find
* `*` - search file for current word
* `/pattern` - search the file for pattern
* `n` - next match
* `N` - prev match

#### Replace
common examples:

* `:s/foo/bar/g`   - replace all after confirming
* `:%s/foo/bar/g`   - replace all after confirming
* `:%s/foo/bar/gc`  - replace each after confirming
* `:%s/foo/bar/gcI` - replace each after confirming (case sensitive)

the command structure is `:rs/[search]/[replace]/a`

range `r` can be:

* empty for the current line
* a number `n` for a specific line
* `%` for the entire file

arguments `a` can be:

* `g` - replace all occurrences (first occurrence by default)
* `i` - case insensitive (default)
* `I` - case sensitive
* `c` - confirm each substitution

#### Windows
* `<Leader>h` - split pane
* `<Leader>v` - vsplit pane
* `<Tab>` - switch panes
* `<Leader>x` - close pane

#### CtrlP
* `<Leader>t` to invoke CtrlP in find file mode
* `;` to invoke CtrlP in buffer mode
* `<Ctrl-f>` to cycle between modes
* `<Ctrl-d>` to switch to filename only search instead of full path
* `<Ctrl-j>`, `<Ctrl>k` or arrow keys to navigate the result list
* `<Ctrl-t>` or `<Ctrl-v>`, `<Ctrl-x>` to open the selected entry in a new tab or in a new split
* `<Ctrl-n>`, `<Ctrl>p` to select the next/previous string in the prompt's history
* `<Ctrl>y` to create a new file and its parent directories

#### Switching to shell mode
* `<Ctrl-z>` - suspend your running vim
* `fg` - suspend the process and get back to your shell
* `:! <command>` - switch to shell mode temporarily

#### Rspec
* `<Leader>z` - run current rspec file
* `<Leader>.` - run example nearest to cursor
* `<Leader>a` - run all specs
