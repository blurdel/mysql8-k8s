# mysql8-k8s

Example code to deploy MySQL 8 with a Persistent Volume

## Usage
### Install
```
helm install <release> ./helm -n <namespace> --create-namespace
```

### List all releases
```
helm ls -a [-n <namespace>]
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
helm uninstall <release> [-n <namespace>]
```

### ExternalSecret/Secret
```
kubectl -n mysql describe password mysql-password-generator

kubectl -n mysql get externalsecret mysql-external-secret -o wide

kubectl -n mysql get secret mysql-secret -o jsonpath='{.data}' | jq 'keys'

```