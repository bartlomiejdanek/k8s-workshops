---
theme : "black"
highlightTheme: "Dracula"
title: k8s
---

# k8s vol2

---

## k8s

- setup a ruby app
- setup postgresql database
- configure deployments

---

## outputs

> Hello World

---

## outputs

> Hello from sample-app-deployment-fb6f67ffb-dp2k8 | 110002 | PostgreSQL 11.2 (Debian 11.2-1.pgdg90+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 6.3.0-18+deb9u1) 6.3.0 20170516, 64-bit | 2019-04-15 14:50:41.643944+00

---

## outputs

> Hello from sample-app-deployment-596ffcbb7-n4976 | 110002 | PostgreSQL 11.2 (Debian 11.2-1.pgdg90+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 6.3.0-18+deb9u1) 6.3.0 20170516, 64-bit | 2019-04-15 14:51:04.767762+00 | ["k8s"]

---

## questions

> ?

---

## CLI cheat sheet

```bash
kubectl apply -f <file_or_directory>
watch "kubectl get pods"
```

```bash
minikube start --vm-driver=hyperkit --cpus 2 --memory 4096
minikube addons enable ingress
```

---

## Docker images

```bash
https://hub.docker.com/r/bartlomiejdanek/app
https://hub.docker.com/_/postgres
```
