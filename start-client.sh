#!/bin/bash

kubectl run -it --rm --image=mysql:8.4.0 --restart=Never mysql-client -- /bin/sh
