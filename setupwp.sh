#!/bin/bash
docker run -u 1000:1000 -it --rm \
	--volumes-from wordpress \
	--network container:wordpress \
	--env-file wordpress.env \
	wordpress:cli wp core install --url="http://localhost:8080/" --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org