podman run -d -e MYSQL_USER=user -e MYSQL_PASSWORD=pass -e MYSQL_DATABASE=db -p 3306:3306 -ip 10.88.0.8 rhel8/mariadb-103
podman ps
