mysql -u root -e "create database drupalize"
cp env.example .env
composer install
eval $(gp env -e APACHE_DOCROOT_IN_REPO=web)
