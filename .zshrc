# uncomment to profile prompt startup with zprof
# zmodload zsh/zprof

# history
SAVEHIST=100000

# vim bindings
bindkey -v

fpath=( "$HOME/.zfunctions" $fpath )


# antigen time!
source ~/dev/antigen/antigen.zsh


######################################################################
### install some antigen bundles

# Don't load the oh-my-zsh's library. Takes too long. No need.
# antigen use oh-my-zsh

# Guess what to install when running an unknown command.
antigen bundle command-not-found

# Helper for extracting different types of archives.
antigen bundle extract

# homebrew  - autocomplete on `brew install`
antigen bundle brew
antigen bundle brew-cask

# nicoulaj's moar completion files for zsh -- not sure why disabled.
antigen bundle zsh-users/zsh-completions

# Syntax highlighting on the readline
antigen bundle zsh-users/zsh-syntax-highlighting

# history search
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# suggestions
antigen bundle zsh-users/zsh-autosuggestions

# colors for all files!
antigen bundle trapd00r/zsh-syntax-highlighting-filetypes

antigen bundle mafredri/zsh-async

antigen bundle git
antigen bundle osx
antigen bundle npm

# Tell antigen that you're done.
antigen apply

###
#################################################################################################

# fix substring search
# https://github.com/zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Automatically list directory contents on `cd`.
auto-ls () {
	emulate -L zsh;
	# explicit sexy ls'ing as aliases arent honored in here.
	hash gls >/dev/null 2>&1 && CLICOLOR_FORCE=1 gls -aFh --color --group-directories-first || ls
}
chpwd_functions=( auto-ls $chpwd_functions )


# history mgmt
# http://www.refining-linux.org/archives/49/ZSH-Gem-15-Shared-history/
setopt inc_append_history
setopt share_history


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# uncomment to finish profiling
# zprof



# Load default dotfiles
source ~/.bash_profile


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# init starship prompt
eval "$(starship init zsh)"