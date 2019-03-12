---
theme : "black"
highlightTheme: "Dracula"
title: k8s intro + basics
---

# k8s

---

## k8s

> system for automating deployment, (de)scaling, balancing and management of containerized applications

---

## k8s features

- service discovery & load balancing
- storage orchestration
- self healing
- batch execution
- horizontal scaling
- secret & config managment
- automatic rollbacks & rollouts
- community ;)


---

## k8s architecture

- master
- node workers / node pools
- nodes
- pods

---

## k8s architecture

![k8s arch](https://1.bp.blogspot.com/-VMBcuIeUCx0/W26-OBALRvI/AAAAAAAABho/ayhh3n6DgHYl_SY9CLece-B-JQs1fTq3QCLcBGAs/s640/kubernetes%2Barchitecture%2Bexplained.jpg)

---

## k8s objects

- namespace
- pods
- deployment
- service
- secret
- configmap
- ingress
- .........

---

## k8s pods

- group of one or more containers deployed on a single node
- containers shares an IP address, hostname and any other resources

---

## k8s deployment

- run a docker image
- scale up/down replicas of pods

---

## k8s services

- ClusterIP
- NodePort
- LoadBalancer

---

## k8s ClusterIP

- visbile inside the cluster
- gets an internal IP address
- traffic is load balanced between PODS of deployment

---

## k8s NodePort

- visbile inside the cluster
- part of master node
- each node proxies a port to the Service
- traffic is available through http(s)
- traffic is load balanced between PODS of deployment

---

## k8s LoadBalancer

- public ip address
- traffic is available through http(s)
- traffic is load balanced between PODS of deployment

---

## k8s ingress

- mananges external access to services based on http requests
- provides load balancing, SSL termination and name-based virtual hosting

---

## k8s ingress - name based hosting

```
foo.bar.com --|                 |-> foo.bar.com s1:80
              | 178.91.123.132  |
bar.foo.com --|                 |-> bar.foo.com s2:80
```

---

## k8s ingress - fanout

```
foo.bar.com -> 178.91.123.132 -> / foo    service1:4200
                                 / bar    service2:8080
```

---

## k8s CLI

```bash
kubectl get deployment
kubectl describe deplyment <deployment-name>
kubectl get deployment <deployment-name> -o yaml
kubectl get deployment -n <namespace>
kubectl get pods --all-namespaces -o wide
kubectl edit deployment <deployment-name>
kubectl delete service <service-name>
```

---

=======
## Ex #0

```
minikube start --vm-driver=hyperkit
minikube dashboard
```

---

## Ex #1

```bash
kubectl run echo \
  --image=k8s.gcr.io/echoserver:1.4 --port=8080
kubectl expose deployment echo --type=NodePort
minikube service echo
```

---

## Ex #2

> k8s secrets & ENV variables

---

## Ex #3

> Ex #1 on steroids
