# mysql8-k8s

Example code to deploy MySQL 8 with a Persistent Volume

## Usage
### Install
```
helm install <release> ./helm
```

### List all releases
```
helm list -a
```

### login to MySQL server
```sh
$ kubectl exec -it mysql-client -- /bin/sh
$ mysql -h mysql-service -u root -p
$ show databases;
$ use SPRING;
MySQL [your-database]> 
```

### Uninstall
```
helm uninstall <release>
```
