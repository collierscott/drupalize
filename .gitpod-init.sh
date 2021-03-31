mysql -u root -e "create database drupalize"
cp env.example .env
apachectl start
cp 10-git-prompt ~/.bashrc.d
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
source ~/.bashrc
composer install
export PATH="$PATH:/workspace/drupalize/vendor/bin"
# /workspace/drupalize/vendor/bin/drush cim
# drush cset system.site uuid "f7ca3af7-e36e-4ef3-9fef-ece86f8f3163"