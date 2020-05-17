

all: bash git

core-linux:
	apt-get update
	apt-get upgrade -y
	apt-get dist-upgrade -f


stow-linux: core-linux
	is-executable stow || apt-get -y install stow


bash: stow-linux
	stow bash

git: stow-linux
	stow git 

