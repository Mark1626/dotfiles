# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/bin

# Path to your oh-my-zsh installation.
export ZSH="/path/to/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Starship
eval "$(starship init zsh)"


# Start Banner
echo "2020202020205f5f5f20202020202020202020205f5f5f20202020202020202020205f5f5f20202020202020202020205f5f5f20202020200a20202020202f5c20205c2020202020202020202f5c20205c2020202020202020202f5c20205c2020202020202020202f7c20207c202020200a202020207c3a3a5c20205c202020202020202f3a3a5c20205c202020202020202f3a3a5c20205c202020202020207c3a7c20207c202020200a202020207c3a7c3a5c20205c20202020202f3a2f5c3a5c20205c20202020202f3a2f5c3a5c5f5f5c2020202020207c3a7c20207c202020200a20205f5f7c3a7c5c3a5c20205c2020202f3a2f202f3a3a5c20205c2020202f3a2f202f3a2f20202f202020205f5f7c3a7c20207c202020200a202f3a3a3a3a7c5f5c3a5c5f5f5c202f3a2f5f2f3a2f5c3a5c5f5f5c202f3a2f5f2f3a2f5f5f2f5f5f5f202f5c207c3a7c5f5f7c5f5f5f5f0a205c3a5c7e7e5c20205c2f5f5f2f205c3a5c2f3a2f20205c2f5f5f2f205c3a5c2f3a3a3a3a3a2f20202f205c3a5c2f3a3a3a3a3a2f5f5f2f0a20205c3a5c20205c20202020202020205c3a3a2f5f5f2f202020202020205c3a3a2f7e7e2f7e7e7e7e2020205c3a3a2f7e7e2f7e202020200a2020205c3a5c20205c20202020202020205c3a5c20205c20202020202020205c3a5c7e7e5c20202020202020205c3a5c7e7e5c20202020200a202020205c3a5c5f5f5c20202020202020205c3a5c5f5f5c20202020202020205c3a5c5f5f5c20202020202020205c3a5c5f5f5c202020200a20202020205c2f5f5f2f2020202020202020205c2f5f5f2f2020202020202020205c2f5f5f2f2020202020202020205c2f5f5f2f0a" | xxd -r -p


# Path

 #Android Path
# export ANDROID_HOME=/path/to/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# nvs
# export NVS_HOME="$HOME/.nvs"
# [ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

# Asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Java
# export JAVA_HOME=/path/to/.asdf/installs/graalvm/20.1.0-java11

# ANTLR Path
export ANTLR_HOME=$HOME/antlr
export ANTLR_FILE=antlr-4.7.1-complete.jar
export CLASSPATH=".:$ANTLR_HOME/$ANTLR_FILE"
alias antlr='java -Xmx500M -cp "$ANTLR_HOME/$ANTLR_FILE" org.antlr.v4.Tool'
alias grun='java -Xmx500M org.antlr.v4.gui.TestRig'

# Colors
# alias diff='diff --color=auto'
alias grep='grep --color=auto'
#alias ls='ls --color=auto'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.config/less/termcap ]] && . ~/.config/less/termcap

eval "$(direnv hook zsh)" 

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
