#!/bin/bash -e

kubectl config use-context $CLUSTER_NAME-admin@$CLUSTER_NAME
helm upgrade --install contour ./tkg-extensions-helm-charts/contour-0.1.0.tgz
