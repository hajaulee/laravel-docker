sudo docker run --rm -v $(pwd):/app composer/composer install
sudo chmod -Rf 777 storage/
sudo docker-compose up -d
sudo docker-compose exec app php artisan key:generate
sudo docker-compose exec app php artisan cache:clear
sudo docker-compose exec app php artisan make:controller MyController