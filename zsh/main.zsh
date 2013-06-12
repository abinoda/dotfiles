export PATH=$PATH:bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/rbenv/plugins/ruby-build/bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"

# colorize terminal
export TERM='xterm-color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# nicer history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# use vim as the editor
export EDITOR=vim

# By default, zsh considers many characters part of a word (e.g., _ and -).
# Narrow that down to allow easier skipping through words via M-f and M-b.
export WORDCHARS='*?[]~&;!$%^<>'

# highlight search results in ack
export ACK_COLOR_MATCH='red'

# path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
MYZSH=$HOME/.zsh

# set name of the theme to load
ZSH_THEME="minimal"

# disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# autocorrect is more annoying than helpful
unsetopt correct_all

# oh-my-zsh plugins
plugins=(git autojump bundler gem)

source $ZSH/oh-my-zsh.sh
source $MYZSH/aliases.zsh
source $MYZSH/completion.zsh
source $MYZSH/functions.zsh

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
