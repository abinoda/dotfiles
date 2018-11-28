# VIM

#### General
* `:w filename` - save file as *filename*
* `wq` - save and quit
* `q!` - quit without saving
* `<Leader><Leader>` - switch between last two files
* `.` - repeat last command
* `:noh` - clear highlighting
* `:vnew` - create file in new pane
* `<Ctrl-z>` - move vim to background

* `jobs`    - view jobs
* `fg (%n)` - move job

#### Traversing files
* `<Ctrl-e/y>` - scroll
* `w` - next word (beginning)
* `W` - next space-separated word (beginning)
* `e` - next word (end)
* `E` - next space-separated word (end)
* `b` - prev word (beginning)
* `B` - prev space-separated wod (beginning)
* `0` - end of line
* `$` - beginning of line
* `{`, `}` - jump paragraph
* `{`, `}` - jump sentence
* `<Ctrl-d/u>` - jump half-screen
* `<Ctrl-f/b>` - jump screen
* `:n` - line number *n*
* `H` - first line of screen
* `M` - middle line of screen
* `L` - last line of screen
* `G` - end of file
* `gg` - beginning of file
* `f<char>` - jump to next instance of char
  
#### Find
* `*` - search file for current word
* `/pattern` - search the file for pattern
* `n` - next match
* `N` - prev match

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
* `s` - delete and goto insert mode

#### Deleting
* `x` - delete character
* `X` - delete character before cursor
* `dw` - delete word
* `cw` - change word (delete word and go to insert mode)
* `ci<char>` - change in 
* `di<char>`

#### Editing
* `v` - enter visual mode
* `V` - enter visual mode and highlight line
* `J` - join lines
* `o` - jump to start/end of selection
* `~` - change case
* `cw`- change word
* `< (V)` - deindent
* `> (V)` - indent
* `dd` - cut/delete line without highlighting
* `yy` - copy line without highlighting
* `x` - cut/delete
* `y` - copy
* `p` - paste after cursor
* `P` - paste before cursor
* `<F2>` - toggle pastemode for when pastung text from outside vim

#### Commenting
1. `<Cntrl-V>` - enter visual mode and select block
2. `I`         - switch to insert mode and enter text
3. `<Esc>`     - press esc to copy insert to block

#### Undo & Redo
* `u` - undo
* `<Ctrl-r>` - redo

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
* `<Leader>t` - run current spec file
* `<Leader>s` - run nearest spec
* `<Leader>l` - run last spec
* `<Leader>a` - run all specs
