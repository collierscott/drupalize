mysql -u root -e "create database drupalize"
cp env.example .env
apachectl start
cp 10-git-prompt ~/.bashrc.d
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
source ~/.bashrc
composer install
export PATH="$PATH:/workspace/drupalize/vendor/bin"
/workspace/drupalize/vendor/bin/drush cim