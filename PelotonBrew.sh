#Get homebrew
sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#use homebrew for everything
brew cask install google-chrome
brew cask install caffeine
brew cask install atom
brew install node
brew cask install dropbox
brew cask install google-drive
brew cask install slack
brew cask install insync
brew cask install screenhero
brew cask install skype
brew cask install sketchup
brew cask install 1password
brew install node
brew install wget
brew cask install vlc


#docker for mac does not have a homebrew cask yet
curl -o Docker.dmg https://download.docker.com/mac/stable/Docker.dmg
hdiutil mount Docker.dmg
cp -R "/Volumes/Docker/Docker.app" /Applications
hdiutil unmount "/Volumes/Docker/"
rm Docker.dmg

#Pull docker images to cache our basics
Docker pull node
Docker pull rethinkdb
Docker pull mongo
Docker pull drone/drone
Docker pull plugins/slack-blame


#Install and configure bash completions
brew install bash-completion
brew tap homebrew/completions
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile
#consider brew install zsh

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
