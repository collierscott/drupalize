mysql -u root -e "create database drupalize"
cp env.example .env
composer install
export PATH="$PATH:/workspace/drupalize/vendor/bin"
apachectl start
