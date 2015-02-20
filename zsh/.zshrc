source ~/.zsh/config-color.zsh
source ~/.zsh/config-prompt.zsh

export PATH=/Users/jimfaes/pear:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/bin/pear:/usr/bin/php:/home/jim/android-sdk-linux/tools:/home/jim/android-sdk-linux/platform-tools:/opt/vagrant/bin:/Users/jimfaes/pear/bin/drush:$HOME/.composer/vendor/bin;

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

alias vafy1="echo 'Box: PHP 5.3 Solr 3.6'; cp -r ~/workspace/vagrant/precise-php53-solr36/Vagrantfile .; cp -r ~/workspace/vagrant/scripts .; cp -r ~/workspace/vagrant/precise-php53-solr36/scripts ."
alias vafy2="cp -r ~/workspace/vagrant/squeeze64lamp52/Vagrantfile .; cp -r ~/workspace/vagrant/squeeze64lamp52/scripts ."
alias vafy3='cp -r ~/workspace/vagrant/precise64lamp-solr46/Vagrantfile .; cp -r ~/workspace/vagrant/precise64lamp-solr46/scripts .'
alias vafy4='cp -r ~/workspace/vagrant/precise64lamp-symfony/Vagrantfile .; cp -r ~/workspace/vagrant/precise64lamp-symfony/scripts .'
alias vafy-D8="echo 'Box: PHP 5.5 (No Solr)'; cp -r ~/workspace/vagrant/trusty-php55/Vagrantfile .; cp -r ~/workspace/vagrant/scripts .; cp -r ~/workspace/vagrant/trusty-php55/scripts ."

pt() { 
      if [[ $@ == *-h* ]]; then
              papertrail "$@"
                else 
                        papertrail "$@" | perl -pe 's/^(.{15})(.)([\S]+)(.)([\S]+)/\e[0m\1\e[1;30m\2\e[0;33m\3\e[0m\4\e[1;34m\5\e[0m/g'
                          fi
}

