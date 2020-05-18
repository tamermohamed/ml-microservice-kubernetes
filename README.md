[![CircleCI](https://circleci.com/gh/tamermohamed/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/tamermohamed/ml-microservice-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Project Files

- app.py is a flask application that make house prediction
- makefile is used to setup python environment, install the package required to run the project, linting the application python file to confirm syntax is valid, finnaly validating the docker file to created the app image
- Docker File is used to create image from the application
- The remaining files will be explianed in the next section

### Run the application 

from command line run make file
- ```makefile setup``` this command will create your python environment
- ```make install``` this will install all the packages the application need to run
- ```makefile lint``` validate your python syntax using <b>pylint</b>, and validate the dockerfile that it has no errors using <b>hadolint</b>
- ```./run_docker.sh``` to bulild image from dockerfile, list all your docker images, then run the docker image
- run ```./make_prediction.sh```, this call the application that running on docker and make the prediction, you can find the result on the terminal where you run run ```./run_docker.sh```
- To deploy the image on your kubernetes cluster, you should appload the image first to your dockerhub, through running the ```./upload_docker.sh```
- Then run ```./run_kubernetes.sh``` this script contains command to run your image on kubernetes cluster, it will deploy a pod, ctl+c to continue runnig the script which will get all the pods, then in order to make your pod be accessed ouside the kubernetes it will forward your host port to the pod port
- run ```./make_prediction.sh``` again
- from kubernetes dashboard you can open the pod and goto to the pod log, you will find the outut of prediction
