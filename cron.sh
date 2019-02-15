#!/bin/bash
sudo docker-compose -f /wordpress/wp.txt exec db mysqldump -u exampleuser -pexamplepass exampledb > /wordpress/mysql.dump
sudo aws s3 cp /wordpress/mysql.dump s3://dev-1-backet
