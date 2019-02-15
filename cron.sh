#!/bin/bash
sudo docker-compose -f /wordpress/wp.txt exec -e MYSQL_USER=exampleuser -e MYSQL_PASSWORD=examplepass db sh /wordpress/backup.sh
sudo aws s3 cp /wordpress/mysql.dump s3://dev-1-backet
