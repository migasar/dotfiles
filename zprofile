# `brew` setup for arm64
local brew_path="/opt/homebrew/bin"
local brew_opt_path="/opt/homebrew/opt"
export PATH="${brew_path}:${PATH}"
eval "$(${brew_path}/brew shellenv)"

# `pyenv` setup
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# `pipx` setup
export PATH="$PATH:/Users/Mica/.local/bin"
export PIPX_BIN_DIR="$HOME/.local/bin"
export PIPX_HOME="$HOME/.local/pipx"
export PIPX_DEFAULT_PYTHON="$HOME/.pyenv/versions/ouroboros/bin/python"

################

# # Setup the PATH for pyenv binaries and shims (WAGON SETTINGS)
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# type -a pyenv > /dev/null && eval "$(pyenv init --path)"

# Wagon Data Setup recommendation
# ref: https://github.com/pyenv/pyenv/issues/1877
# Clarify linker compiler (to avoid a bug when using `pyenv` in Apple Silicon)
export LDFLAGS="-L/opt/homebrew/lib"
export CPPFLAGS="-I/opt/homebrew/include"

################

# Sublime Text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
