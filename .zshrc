# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export SVN_EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="alanpeabody"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=/Applications/MAMP/bin/php/php5.3.14/bin/phpize:/usr/local/share/pear:/Applications/MAMP/bin/php/php5.3.14/bin:/Applications/MAMP/Library/bin/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/bin/pear:/Users/jimfaes/pear/bin/drush:/home/jim/android-sdk-linux/tools:/home/jim/android-sdk-linux/platform-tools:/opt/vagrant/bin

#aliases
alias www='cd /var/www'
alias restarta='sudo service apache2 restart'
alias ls='ls -al'

# check if drush is installed
if [[ -x `which drush` ]]; then
  alias drache='drush cc all'
  alias drdl='drush dl'
  alias dren='drush en $1 -y'
  alias dris='drush dis $1 -y'
  alias drun='drush pm-uninstall $1 -y'
fi

alias vafy1="cp -r ~/workspace/vagrant/precise64lamp/Vagrantfile .; cp -r ~/workspace/Vagrant/precise64lamp/scripts ."
alias vafy2="cp -r ~/workspace/vagrant/squeeze64lamp52/Vagrantfile .; cp -r ~/workspace/Vagrant/squeeze64lamp52/scripts ."
