# DevOps Learning Hub - Kubernetes Deployment

## Overview

DevOps Learning Hub is a Django-based web application that curates the best free DevOps learning resources in a structured, topic-wise format for both beginners and experienced professionals.

This project demonstrates how a Python Django application can be containerized using Docker and deployed on Kubernetes using Deployments and Services.

---

## Features

- Curated DevOps learning resources
- Topic-wise organization of content
- Django-based web application
- Docker containerization
- Kubernetes deployment with multiple replicas
- External access using Kubernetes NodePort Service

---

## Technology Stack

- Python
- Django
- Docker
- Kubernetes
- Minikube
- kubectl

---

## Project Structure

```text
python-devops-app/
│
├── devops/
├── webapp/
├── deployment.yaml
├── service.yaml
├── Dockerfile
├── requirements.txt
├── manage.py
├── README.md
└── DevOps_learning_hub.png
```

---

## Containerization

The application is containerized using Docker and published to Docker Hub.

Docker Image:

```text
vanshikamod/devops-learning-hub:v1
```

---

## Kubernetes Deployment

The application is deployed using a Kubernetes Deployment with:

- 2 replicas
- ReplicaSet management
- Self-healing capability
- Desired state management
- Rolling update support

Deployment verification:

```bash
kubectl get deployments
kubectl get rs
kubectl get pods
```

---

## Kubernetes Service

The application is exposed externally using a NodePort Service.

Service configuration:

- Service Type: NodePort
- Service Port: 80
- Target Port: 8000
- NodePort: 30007

Verification:

```bash
kubectl get svc
```

---

## Deployment Architecture

```text
                     User Request
                           |
                           |
                Kubernetes Service
                     (NodePort)
                           |
          --------------------------------
          |                              |
          |                              |
        Pod-1                          Pod-2
          |                              |
          --------------------------------
                           |
                      Deployment
```

---

## Running the Application

Deploy the application:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Verify resources:

```bash
kubectl get deployments
kubectl get rs
kubectl get pods
kubectl get svc
```

---

## Real-World Troubleshooting Experience

While testing the application on Minikube running on Windows, the application was not accessible using:

```text
http://<minikube-ip>:30007
```

Although:

- Pods were healthy
- Service was correctly configured
- Endpoints were available
- NodePort was exposed

the connection failed.

### Root Cause

When Minikube runs with the Docker driver on Windows, the Minikube node exists within an internal Docker-managed network. As a result, the Minikube IP address may not always be directly reachable from the host operating system.

### Solution

Use:

```bash
minikube service devops-learning-hub-service --url
```

This creates the required route between the host machine and the Kubernetes service and provides a reachable URL.

### Linux vs Windows

Linux environments can often access NodePort services directly using:

```bash
http://<minikube-ip>:<node-port>
```

However, on Windows with the Docker driver, accessing services through:

```bash
minikube service <service-name> --url
```

is generally more reliable.

---

## Kubernetes Concepts Demonstrated

- Pods
- ReplicaSets
- Deployments
- NodePort Services
- Service Discovery
- Container Networking
- Scaling Applications
- Self-Healing
- Load Distribution
- Kubernetes Troubleshooting
- Minikube Networking

---

## Useful Commands

```bash
kubectl get pods
kubectl get deployments
kubectl get rs
kubectl get svc

kubectl describe deployment devops-learning-hub-deployment
kubectl describe service devops-learning-hub-service

kubectl logs <pod-name>

kubectl delete -f deployment.yaml
kubectl delete -f service.yaml
```

---

## Learning Outcomes

Through this project, I gained practical experience in:

- Building and containerizing a Django application
- Deploying applications on Kubernetes
- Managing Deployments and ReplicaSets
- Exposing applications using Services
- Understanding NodePort networking
- Troubleshooting Minikube connectivity issues
- Working with Kubernetes resource management and scaling

---

## Author

**Vanshika Jaiswal**

DevOps | Cloud | Kubernetes | Automation Enthusiast