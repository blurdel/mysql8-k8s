# mysql8-k8s

Example code to deploy MySQL 8 with a Persistent Volume

## Usage
### Create all resources
```
./start-all.sh
```

### login to MySQL server
```sh
$ kubectl exec -it mysql-client -- /bin/sh
$ mysql -h mysql-service -u root -ppassword
$ show databases;
$ use SPRING;
MySQL [your-database]> 
```

### Delete all resources
```
./stop-all.sh
```
