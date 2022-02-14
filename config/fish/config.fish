if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source

if test -z (pgrep ssh-agent | string collect)
    eval (ssh-agent -c)
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set -gx PATH "$HOME/.cargo/bin" $PATH

set -gx PATH "$HOME/.jenv/bin" $PATH

set -gx GOPATH $HOME/go
set -gx PATH "$GOPATH/bin" $PATH

status --is-interactive; and source (jenv init -|psub)
