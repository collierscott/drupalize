mysql -u root -e "create database drupalize"
cp env.example .env
composer install
apachectl start
