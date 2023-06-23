GITHUB="https://github.com"

[[ -z "$NENV_HOME" ]] && export NENV_HOME="$HOME/.nenv"

_zsh_nenv_install() {
    echo "Installing nenv..."
    git clone "${GITHUB}/ryuone/nenv.git"         "${NENV_HOME}"
}

_zsh_nenv_load() {
    # export PATH
    export NENV_ROOT="$HOME/.nenv"
    export PATH="$NENV_HOME/bin:$PATH"
    eval "$(nenv init -)"
}

# install nenv if it isnt already installed
[[ ! -f "$NENV_HOME/libexec/nenv" ]] && _zsh_nenv_install

# load nenv if it is installed
if [[ -f "$NENV_HOME/libexec/nenv" ]]; then
    _zsh_nenv_load
fi