# Saving Apache access logs in MySQL Database

## Pre-req
1. Docker
```
sudo apt-get install docker.io
```
2. Docker Compose
```
sudo apt-get install docker-compose
```

> Note: You can use docker and docker compose on any Operating system. Above mentioned installation commands are for Ubuntu.

## Creating custom container with Apache
Run following command to create Apache container image
```
sudo docker build -t ubu_apache .
```

- Now you can run following command to bring up apache and mysql.
- MySQL container will start getting access logs from apache and save in database table.

```
sudo docker-compose up -d
```

## Details
1. 2 x Docker containers will be deployed
- Apache
- MySQL
2. You can access web page using [http://localhost](http://localhost) or if it was a remote machine then using its public IP Address [http://public_ip_address](http://public_ip_address)
3. You can check access logs in datbase using following command
```
sudo docker exec -it mysqldb mysql -u root -p'changeme' -e "select * from apachelogs.web_access_log;"
````

### Setting different passwords for mysql usernames

1. Edit `docker-compose.yml` file, and change password in `environment` under `mysql` service
- MYSQL_DATABASE=`root`
- MYSQL_ROOT_PASSWORD=`changeme`
- MYSQL_USER=`loguser`
- MYSQL_PASSWORD=`loguser`

2. You will also have to update following values in `apacheconf/apache.conf` file

LogSQLLoginInfo mysql://`root`:`changeme`@mysql/apachelogs

