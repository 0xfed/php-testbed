# php-testbed
Test bed for PHP

# WordPress

Version: 6.7
```bash

git clone https://github.com/WordPress/WordPress
cd WordPress
git checkout tags/6.7
```

## Mount volumes
As root:


/var/lib/docker/volumes/php-testbed_wordpress/_data

## Running
```
docker compose up --build -d
docker compose logs -f | grep php:
# wordpress  | [Thu Apr 03 17:53:01.665256 2025] [php:error] [pid 19] [client 172.18.0.1:46534] PHP Fatal error:  Cannot redeclare wp_kses() (previously declared in /var/www/html/wp-includes/kses.php:712) in /var/www/html/wp-includes/kses.php on line 712
curl -vv localhost:80/
```

## Install
```
docker run -u 1000:1000 -it --rm \
	--volumes-from wordpress \
	--network container:wordpress \
	--env-file wordpress.env \
	wordpress:cli wp core install --url="http://localhost:8080/" --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org
```

## TODO

- Files with language construct only
  - Class definition
  - Function definition
- Files aren't:
  - Template HTML