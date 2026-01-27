# mysql8-k8s

Example code to deploy MySQL 8 with a Persistent Volume

## Usage
### Install
```
helm install <release> ./helm --namespace <name>
```

### List all releases
```
helm ls -a
```

### login to MySQL server
```sh
$ kubectl exec -it mysql-client -- /bin/sh
$ mysql -h mysql-service -u root -p
$ show databases;
$ use SPRING;
```

### Uninstall
```
helm uninstall <release>
```
