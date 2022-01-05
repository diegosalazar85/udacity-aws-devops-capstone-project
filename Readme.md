[![<Diego Salazar>](https://circleci.com/gh/diegosalazar85/udacity-aws-devops-capstone-project.svg?style=svg)](https://circleci.com/gh/diegosalazar85/udacity-aws-devops-capstone-project)

## Project Overview

In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

* Working in AWS
* Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with Ansible and CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines

As a capstone project, the directions are rather more open-ended than they were in the previous projects in the program. You will also be able to make some of your own choices in this capstone, for the type of deployment you implement, which services you will use, and the nature of the application you develop.

### Project Tasks

You will develop a CI/CD pipeline for micro services applications with either blue/green deployment or rolling deployment. You will also develop your Continuous Integration steps as you see fit, but must at least include typographical checking (aka “linting”). To make your project stand out, you may also choose to implement other checks such as security scanning, performance testing, integration testing, etc.!

Once you have completed your Continuous Integration you will set up Continuous Deployment, which will include:

* Pushing the built Docker container(s) to the Docker repository (you can use AWS ECR, create your own custom Registry within your cluster, or another 3rd party Docker repository) ; and
* Deploying these Docker container(s) to a small Kubernetes cluster. For your Kubernetes cluster you can either use AWS Kubernetes as a Service, or build your own Kubernetes cluster. To deploy your Kubernetes cluster, use either Ansible or Cloudformation. Preferably, run these from within Jenkins or Circle CI as an independent pipeline.

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2577/view).

---

## Repository

Github Link: https://github.com/diegosalazar85/udacity-aws-devops-capstone-project

---

## Setup the Environment

### Requried Environment Variables

* `AWS_DEFAULT_REGION`: AWS region were the AWS EKS cluster wil be created.
* `DOCKERHUB_EMAIL`: Docker registry account email address
* `DOCKERHUB_PASSWORD`: Docker registry account password
* `DOCKERHUB_REGISTRY`: Docker registry URL
* `DOCKERHUB_USERNAME`: Docker registry username

### Create AWS EKS Cluster

1. Go to `eks/ansible` directory
```
$ cd ./eks/ansible
```
2. Execute ansible playbook
```
$ ansible-playbook -i inventory.txt --private-key <PATH_TO_PRIVATE_KEY> create-eks-cluster.yml 
```

### Create K8s App

1. Go to `eks/ansible` directory
```
$ cd ./eks/ansible
```
2. Execute ansible playbook
```
$ ansible-playbook -i inventory.txt --private-key <PATH_TO_PRIVATE_KEY> create-capstone-project-app.yml 
```