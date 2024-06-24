if command -v hx &> /dev/null; then
	export EDITOR=hx
elif command -v helix &> /dev/null; then
	export EDITOR=helix
else
	export EDITOR=nano
fi

export VISUAL=$EDITOR
export SUDO_EDIT=$EDITOR

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export ERRFILE=$XDG_CACHE_HOME/X11/xsession-errors
export ZDOTDIR=$HOME/.config/zsh
export USERXSESSION=$XDG_CACHE_HOME/X11/xsession
export USERXSESSIONRC=$XDG_CACHE_HOME/X11/xsessionrc
export ALTUSERXSESSION=$XDG_CACHE_HOME/X11/Xsession
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter
export LESSHISTFILE=$XDG_CACHE_HOME/less/history
export _Z_DATA=$XDG_DATA_HOME/z
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export RUSTUP_HOME="$XDG_DATA_HOME"/rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv
export PATH=$XDG_DATA_HOME/cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/scripts:$PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$XDG_DATA_HOME"/go
