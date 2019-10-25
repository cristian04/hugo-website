+++ 
draft = true
date = 2019-10-22T08:46:29-03:00
title = "Visualizing k8s components with kubeview"
description = ""
slug = "Visualizing k8s components with kubeview" 
tags = ['kubernetes']
categories = ['kubernetes','kubeapps']
externalLink = ""
series = ['kubernetes','visualization']
+++
On the past few months, I've been using `kubeview` for my trainings.
It allows me to show a graphic representation of my kubernetes infrastructure, allowing students to better understand what is happening under the hood.

# Installation

To install `kubeview`, just deploy the manifests available on the [official repo.](https://github.com/benc-uk/kubeview/tree/master/deployments)

Once this is ready, open a new browser and point to your service instance. Instructions on how to perform this are available on the `kubeview` repository.

Now, let's try by deploying autoscaling application.

If you are using `minikube`, you may want to enable the following addons:

```
$ minikube addons enable ingress
✅  ingress was successfully enabled
```

```
$ minikube addons enable metrics-server
✅  metrics-server was successfully enabled
```
# Demo: Rolling upgrades

# Demo: Horizontal Pod Autoscaling (HPA): Scaling up and down

Let's visualize how an application scales up and down based on CPU usage.

- Run an app with resources set
  - ```kubectl run nginx --image nginx  ```
- Expose it
  - ```kubectl expose deployment nginx --type NodePort ```
- Add autoscaling
  - ```kubectl autoscale deployment nginx --max=10 --cpu-percent=10 --min=2```
- Add ingress
  - {{< highlight yaml >}}
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  annotations:
    kubernetes.io/ingress.class: nginx
    kubernetes.io/tls-acme: "true"
    nginx.ingress.kubernetes.io/secure-backends: "true"
    nginx.ingress.kubernetes.io/ssl-redirect: "true"
  labels:
    name: websitev1
  name: websitev1
spec:
  rules:
  - host: websitev1.clvr.cloud
    http:
      paths:
      - backend:
          serviceName: websitev1
          servicePort: http
        path: /
  tls:
  - hosts:
    - websitev1.clvr.cloud
    secretName: websitev1-clvr-cloud-tls
    {{< /highlight >}}
- Access it
  - 
- Performance testing


### Tip 1: Get current cpu usage:
```
kubectl -n websites get hpa websitev1 -o yaml | grep currentCPUUtilizationPercentage
```