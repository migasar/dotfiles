# Setup the PATH for pyenv binaries and shims
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv 2> /dev/null)"
type -a pyenv > /dev/null && eval "$(pyenv init --path)"

# Created by `pipx` on 2023-11-13 00:59:45
export PATH="$PATH:/Users/mica/.local/bin"

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH
