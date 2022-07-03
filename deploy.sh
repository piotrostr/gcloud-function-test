#!/bin/bash

# create a project
# TODO

# enable the APIs: 

# cloud function

# cloud build

# deploy function
gcloud functions deploy Handler \
        --runtime=go116 \
        --trigger-http \
        --allow-unauthenticated
