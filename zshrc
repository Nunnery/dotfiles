source /usr/local/share/antigen/antigen.zsh

# Generic ZSH bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Stuff from oh-my-zsh
antigen use oh-my-zsh
antigen bundle aws
antigen bundle command-not-found
antigen bundle git
antigen bundle jenv
antigen bundle ssh-agent
antigen bundle zoxide

antigen apply

[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.functions ]] && source ~/.functions
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end