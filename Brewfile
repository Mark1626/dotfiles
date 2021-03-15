# Credits to vraravam https://github.com/vraravam for the root source file
cask_args appdir: '/Applications'

tap 'homebrew/bundle'
tap 'homebrew/cask'
tap 'homebrew/cask-versions'
tap 'homebrew/core'
tap 'homebrew/services'
tap 'moul/moul'
tap 'theseal/ssh-askpass'

# Core
brew 'bash'
brew 'autoconf'
brew 'automake'
brew 'cmake'      # for wasm/wabt
brew 'make'
brew 'coreutils'  # pre-requisite for asdf
brew 'direnv'

# Core Tools
brew 'git'
brew 'git-crypt'
brew 'gnupg'
brew 'vim'

# Core Libs
brew 'libiconv'
brew 'libffi'
brew 'libtool'
brew 'libyaml'
brew 'libxslt'
brew 'openssl', link: true
brew 'readline'
brew 'zlib', link: true
brew 'wget'

# Utils
brew 'htop'
brew 'gmp'
brew 'fzf'

# P5 Utils
brew 'docker-diff'

# Compilers
brew 'gcc'
brew 'guile'
brew 'python'    # TODO: Move to using asdf to manage this

# DB
# brew 'postgresql' Moving this to asdf
brew 'recutils'

# Utils
brew 'tmux'
brew 'aspell'
brew 'graphviz'

brew 'ssh-askpass', restart_service: true # TODO: Does this also handle configuring for starting the service on re-login?

brew 'socat'
brew 'tig'

# Casks
cask 'intellij-idea-ce'
cask 'keybase'
# cask 'virtualbox'
# cask 'visual-studio-code'
cask 'zoom'
cask 'docker'
# cask 'drawio'

# cask 'iterm2'
# cask 'alacritty'
cask 'xquartz'

# Kubernetes

brew 'kubernetes-cli'
# brew 'k9s' Moved to asdf
# brew 'kubectx' Moved to asdf
