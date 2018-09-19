<p align="center"><img src="https://scontent.fhan2-4.fna.fbcdn.net/v/t1.0-1/p160x160/24058727_754569334742238_961757049669666567_n.jpg?_nc_cat=109&oh=ff47d472cbdfdb0dd7f157d853ef5c54&oe=5C2F8E21"></p>

# laravel-docker

## Enviroment 
* docker : Docker version 17.06.0-ce, build 02c1d87
* docker-compose : docker-compose version 1.15.0, build e12f3b9
* docker-machine : docker-machine version 0.12.1, build c8b17e8

## Run project
1. Compose install :
```
sudo docker run --rm -v $(pwd):/app composer/composer install
```

2. Run docker container with specified service in docker-compose.yml
```
sudo docker-compose up -d
```

3. Configure enviroment for laravel :
* Enviroment file :
`cp .env-example .env`

* Generate key and optimize commands :
```
sudo docker-compose exec app php artisan key:generate
sudo docker-compose exec app php artisan cache:clear
```

* Migrate database
`sudo docker-compose exec app php artisan migrate --seed`
There may be an error, but the site is still working.

4. Grant permission for storge folder :
```
sudo chmod -Rf 777 storage/
sudo chmod -Rf 777 storage/ # If web folder is in /var/www/
```

5. Laravel should work by access http://0.0.0.0:8080