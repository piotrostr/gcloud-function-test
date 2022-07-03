#!/bin/bash

project_name=green-badger

# create a project
gcloud projects create $project_name

# enable the APIs: 

# cloud function
gcloud services enable cloudfunctions.googleapis.com

# cloud build
gcloud services enable cloudbuild.googleapis.com

# deploy function
gcloud functions deploy Handler \
        --runtime=go116 \
        --trigger-http \
        --allow-unauthenticated
