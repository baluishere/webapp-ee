# webapp

Sample helloworld webapp dedevloped in python with a single resource uri `/helloworld` deployable in minikube

## Prerequisites

- Host machine should have minikube installed and running. To start minikube run `minikube start --driver=hyperkit`
- Host machine should have Helm installed. If not install helm - `brew install helm`

## How to Build

- Enable ngnix ingress controller in minikube if not enabled already.
```
minikube addons enable ingress
```
- Run helm install from the project root. This should spin up the applicaion `webapp`.
```
helm install webapp chart/.
```
- Ingress ngnix is used to expose the service. Fetch ip of the minikube node
```
minikube ip
```
- Access the application as below
```
http://<minikube ip>/helloworld
```

