# 🍕 Zomato Clone — Full DevOps Pipeline

A production-grade DevOps project deploying a Zomato clone application
on AWS EKS with a complete CI/CD pipeline.

---

## 🛠️ Tools & Technologies

| Category | Tools |
|---|---|
| Version Control | Git, GitHub |
| Containerization | Docker, AWS ECR |
| CI/CD | Jenkins |
| Infrastructure | Terraform, AWS EC2, VPC |
| Orchestration | Kubernetes, AWS EKS |
| GitOps | ArgoCD |
| Security | Aqua Trivy, SonarQube |
| Monitoring | Prometheus, Grafana |

---

## 📁 Project Structure

| Folder | Purpose |
|---|---|
| app/ | Zomato React application |
| docker/ | Dockerfile and image config |
| jenkins/ | CI/CD pipeline scripts |
| k8s/ | Kubernetes deployment files |
| terraform/ | AWS infrastructure as code |
| monitoring/ | Prometheus and Grafana configs |
| docs/ | Project documentation |

---

## 🏗️ Architecture

| Layer | Details |
|---|---|
| Application | Containerized with Docker |
| Infrastructure | Provisioned with Terraform |
| CI/CD | Jenkins pipeline on AWS EC2 |
| Deployment | AWS EKS via ArgoCD GitOps |
| Security | Aqua Trivy and SonarQube scanning |
| Monitoring | Prometheus metrics + Grafana dashboards |

---

## 👨‍💻 Author

| Name | Role |
|---|---|
| Rejay | DevOps Engineer |
# Day 7 - SonarQube + Trivy added to pipeline
