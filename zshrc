#if [ -z "$TMUX" ] # When zsh is started attach to current tmux session or create a new one
#then
#    tmux attach -t TMUX || tmux new -s TMUX
#fi

export ZSH=/Users/nik/.oh-my-zsh

ZSH_THEME="imp"

plugins=(
git
osx
history-substring-search
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
colored-man-pages
z
poetry
)

fpath+=~/.zfunc
autoload -U compinit && compinit # reload completions for zsh-completions

export PATH="$HOME/.poetry/bin:$PATH"
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

export ITERM2_SQUELCH_MARK=1
source ~/.iterm2_shell_integration.zsh

if command -v brew >/dev/null 2>&1; then
    # Load rupa's z if installed
    [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
export PATH="$(pyenv root)/shims:$PATH"
