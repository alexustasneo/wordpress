#!/bin/bash
mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD exampledb > /wordpress/mysql.dump