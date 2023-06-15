> This project is for [@InstaBug](https://github.com/Instabug) Infrastructure Challenge Phase 2023

## Full Documentation :closed_book:
:warning: See the [Wiki](https://github.com/omarmoo5/GoDockerApp/wiki) for full documentation, screenshots, and implementation details. :warning:


# GoDockerApp
Streamlined Golang web server deployment

```bash
.
├── Dockerfile
├── Jenkinsfile
├── README.md
├── app
│   ├── README.md
│   ├── db.go
│   ├── go.mod
│   ├── go.sum
│   └── main.go
├── docker-compose.yml
└── goapp
    ├── Chart.yaml
    ├── charts
    ├── templates
    │   ├── app-deployment.yaml
    │   ├── app-hpa.yaml
    │   ├── app-service.yaml
    │   ├── db-deployment.yaml
    │   └── db-service.yaml
    └── values.yaml
```


### DELIVERABLES
- [Dockerfile](https://github.com/omarmoo5/GoDockerApp/blob/main/Dockerfile)
- [Jenkinsfile](https://github.com/omarmoo5/GoDockerApp/blob/main/Jenkinsfile) Pipeline Build job --> [DockerHub Image](https://hub.docker.com/r/omarmokhtar99/go-docker-app)
- [Docker compose file](https://github.com/omarmoo5/GoDockerApp/blob/main/docker-compose.yml)
- [Helm manifests](https://github.com/omarmoo5/GoDockerApp/tree/main/goApp) for Kubernetes to deploy the app
- [Autoscaling manifest](https://github.com/omarmoo5/GoDockerApp/blob/main/goApp/templates/app-hpa.yaml)
- [argocd app file](https://github.com/omarmoo5/GoDockerApp/blob/main/agrocd-app.yaml) <-> [Configurations Repo](https://github.com/omarmoo5/goDockerApp-conf)
- [Documentation](https://github.com/omarmoo5/GoDockerApp/wiki):
    * [Project Requirements](https://github.com/omarmoo5/GoDockerApp/wiki/Task-Description)
    * [Containerization Process](https://github.com/omarmoo5/GoDockerApp/wiki/Containerization-Process)
    * [API Testing and FIX](https://github.com/omarmoo5/GoDockerApp/wiki/API-Testing)
    * [Jenkins pipeline](https://github.com/omarmoo5/GoDockerApp/wiki/Jenkins-pipeline)
    * [Helm Manifest & Autoscaling](https://github.com/omarmoo5/GoDockerApp/wiki/Helm-Manifests-and-Autoscaling)
    * [ArgoCD ( GitOps )](https://github.com/omarmoo5/GoDockerApp/wiki/argoCD-(GitOps))


## Quick Start

you can run the whole application and the MySQL database using one line only.

```bash
$ docker-compose up
```
by running this command, MySQL and the server containers will be created sharing the same network.

![compose](https://github.com/omarmoo5/GoDockerApp/blob/doc/doc/docker-compose.png)
