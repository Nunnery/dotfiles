pupdate() { case ":${PATH:=$1}:" in *:$1:*) ;; *) PATH="$1:$PATH" ;; esac; }

. "$HOME/.cargo/env"

export GOPATH="$HOME/go"
export VOLTA_HOME="$HOME/.volta"

pupdate "$VOLTA_HOME/bin"
pupdate "$HOME/.cargo/bin"
pupdate "$HOME/.local/bin"
pupdate "$HOME/bin"
pupdate "$GOPATH/bin"
