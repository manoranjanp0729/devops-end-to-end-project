# DevOps End-to-End Project (Phase-1)

## Project Overview

This project demonstrates the implementation of a complete DevOps workflow using Terraform, AWS, Docker, Nginx, Git, and GitHub.

The goal of this project is to provision AWS infrastructure using Infrastructure as Code (Terraform), deploy an application on a private EC2 instance, containerize it using Docker, and expose it securely through an Application Load Balancer.

---

## Architecture

```text
Internet
    ↓
Application Load Balancer (ALB)
    ↓
Private EC2 Instance
    ↓
Docker Container
    ↓
Nginx
    ↓
Custom Website
```

---

## AWS Infrastructure

The infrastructure is provisioned using Terraform.

### Components Created

* VPC
* Public Subnet
* Private Subnet
* Internet Gateway (IGW)
* NAT Gateway
* Route Tables
* Security Groups
* IAM Role
* SSM Access
* EC2 Instance
* Application Load Balancer (ALB)
* Target Group

---

## Security Design

### Public Resources

* Application Load Balancer
* NAT Gateway

### Private Resources

* EC2 Instance
* Application Container

### Access Method

The EC2 instance is deployed in a private subnet and is accessed using AWS Systems Manager (SSM) instead of SSH.

Benefits:

* No public IP required
* No inbound SSH port exposure
* Improved security posture

---

## Terraform Workflow

```text
Terraform Code
      ↓
terraform init
      ↓
terraform plan
      ↓
terraform apply
      ↓
AWS Infrastructure Created
```

### Common Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

---

## Docker Workflow

The application is containerized using Docker.

### Docker Build Process

```text
Dockerfile
      ↓
docker build
      ↓
Docker Image
      ↓
docker run
      ↓
Docker Container
```

### Common Commands

```bash
docker build -t my-nginx:v1 .
docker run -d --name nginx-container -p 8080:80 my-nginx:v1
docker ps
docker logs nginx-container
docker exec -it nginx-container bash
```

---

## Project Structure

```text
devops-end-to-end-project/
│
├── terraform/
│   ├── provider.tf
│   ├── vpc.tf
│   ├── subnet.tf
│   ├── igw.tf
│   ├── nat.tf
│   ├── route-table.tf
│   ├── security-group.tf
│   ├── iam.tf
│   ├── ec2.tf
│   ├── alb.tf
│   ├── tg.tf
│   ├── tg-attachment.tf
│   └── outputs.tf
│
├── docker/
│   ├── Dockerfile
│   └── index.html
│
└── README.md
```

---

## Technologies Used

* AWS
* Terraform
* Linux
* Docker
* Nginx
* Git
* GitHub

---

## Learning Outcomes

Through this project I learned:

* Infrastructure as Code using Terraform
* AWS networking concepts
* Public and Private Subnets
* Internet Gateway and NAT Gateway
* Security Groups
* Application Load Balancer
* AWS Systems Manager (SSM)
* Docker Image Creation
* Docker Container Management
* Git Version Control
* GitHub Repository Management

---

## Future Enhancements
* Checkov, S3 Bucket & DynamoDB
* Kubernetes Deployment
* Jenkins CI/CD Pipeline
* Prometheus Monitoring
* Grafana Dashboards
* Automated Docker Builds
* AI-powered Log Analysis

```
```
