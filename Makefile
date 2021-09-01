.ONESHELL:

source := dot
output := ~

sources := $(wildcard $(source)/_*)

dotfiles := $(subst $(source),$(output),$(sources))

# Copy dotfile
$(output)/%: $(source)/%
	cp $< $(subst _,.,$@)

brew: Brewfile
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew bundle

sw:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

keys:
	ssh-keygen -t rsa -b 4096
	gpg --full-generate-key

dotenv: $(dotfiles)

repo-mac:
	mkdir -p ~/Documents/opensource/personal
	# cd ~/Documents/opensource/personal
	git clone git@github.com:Mark1626/Paraphernalia.git ~/Documents/opensource/personal/Paraphernalia
	git clone git@github.com:Mark1626/knowledge.git ~/Documents/opensource/personal/knowledge

repo-linux:
	mkdir -p ~/projects/opensource/personal

setup-mac: brew sw keys dotenv repo-mac

setup-linux: sw keys dotenv repo-linux

.PHONY: brew sw keys dotenv repo-mac setup-mac setup-linux
