#!/bin/bash

project_name="gentle-green-badger"

gcloud functions delete Handler --quiet
gcloud projects delete $project_name --quiet
