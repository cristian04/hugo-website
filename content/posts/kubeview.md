+++ 
draft = true
date = 2019-10-22T08:46:29-03:00
title = "Visualizing k8s components with kubeview"
description = ""
slug = "Visualizing k8s components with kubeview" 
tags = ['kubernetes','cloud native','infraestructure visualization',]
categories = ['tutorials','kubernetes']
+++
On the past few months, I've been using `kubeview` for some of my trainings.

It allows me to show a graphic representation of the cloud  infrastructure, allowing students to better understand what is happening on the different kubernetes components.

Many thanks to @benc-uk for `kubeview`.

# Installation

To install `kubeview`, just deploy the manifests available on the [official repo.](https://github.com/benc-uk/kubeview/tree/master/deployments)

Alternativly you can use the `helm` chart available on the same repository to install it.

Once this is ready, open a new web browser and point to your service instance. Instructions on how to perform this are also available on the repository.

Now, let's try some demos

# Demo 1: Deploying an application

On the first demo, we will see how does the architecture of a containersided application looks like when is deployed on a kubernetes cluster. 

We will scale the application up and we will expose this container as a service so we can see the benefits of K8S Load Balancing built-in capabilities. 

Finally, the service will be exposed externally using an _ingress controller_.

# Demo 2: Rolling upgrades

Now that we have our application up and running, lets see what happens when we run an update.

On this demo will trigger an update by changing the application version. We will also analyse the different upgrading strategies.

- RollingUpdate
- OnDelete

# Demo 3 : HPA Scaling up and down

Finally, we will visualize how does kubernetes scales containers up and down when we use horizontal pod autoscaling (HPA) on a cluster with `metrics` enabled.

To test the performance, we will use `Jmeter` and `Apache Benchmark`.

Wanna learn more? Feel free to contact me and remember that I provide consultancy servicies trought CLVR Cloud.