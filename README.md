[![CircleCI](https://circleci.com/gh/myersstephen/ml-microservice-container-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/myersstephen/ml-microservice-container-kubernetes/tree/master)

# Machine Learning Microservice

## Project Overview

In this project we operationalize a Machine Learning Microservice API.

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests our ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

- Test your project code using linting
- Complete a Dockerfile to containerize this application
- Deploy your containerized application using Docker and make a prediction
- Improve the log statements in the source code for this application
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload a complete Github repo with CircleCI to indicate that your code has been tested

---

## Setup the Environment

- Create a virtual environment and activate it

  ```bash
  python3 -m venv ~/.devops
  source ~/.devops/bin/activate
  ```

- Install the necessary dependencies from Makefile

  ```bash
  make install
  ```

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Make a Prediction

- Open a new terminal and run:

  ```bash
  ./make_prediction.sh
  ```

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl

### Other Libraries Needed

- Docker
- Hadolint
- Virtualbox
- Kubernetes (Minikube)
