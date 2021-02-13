mysql -u root -e "create database drupalize"
cp env.example .env
composer install
export PATH="$PATH:/workspace/drupalize/vendor/bin"
apachectl start
cp 10-git-prompt ~/.bashrc.d
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
source ~/.bashrc