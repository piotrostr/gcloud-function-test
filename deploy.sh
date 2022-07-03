#!/bin/bash

# define vars
project_name="gentle-green-badger"

# check if project exits, create if not
matching_projects=$(gcloud projects list \
        --filter="name:$project_name" \
        --format=json \
        --quiet)
if ! [ "$matching_projects" == "[]" ]; then
        echo "Project $project_name already exists"
else
        gcloud projects create $project_name
fi

# enable any cloud apis
gcloud services enable cloudfunctions.googleapis.com --quiet
gcloud services enable cloudbuild.googleapis.com --quiet

# deploy function
gcloud functions deploy Handler \
        --runtime=go116 \
        --trigger-http \
        --allow-unauthenticated \
        --quiet
