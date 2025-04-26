# Set the default editor to nvim
export EDITOR="nvim"

# Starship prompt initialization
eval "$(starship init bash)"

# Ruby environment setup
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

# Fuzzy Finder setup
eval "$(fzf --bash)"

# Node environment setup for NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/usr/local/opt/libpq/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libpq/lib"
export CPPFLAGS="-I/usr/local/opt/libpq/include"

# Source custom aliases and bindings
source ~/.config/bashrc/custom_aliases
source ~/.config/bashrc/custom_bindings
