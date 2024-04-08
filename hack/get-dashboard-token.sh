#!/bin/bash
# Get the dashboard token for admin user
echo "Login to kubernetes dashboard at https://10.129.0.21:8443 with the following token"
kubectl -n kube-system describe secret `kubectl -n kube-system get secret|grep admin-token|cut -d " " -f1`|grep "token:"|tr -s " "|cut -d " " -f2
