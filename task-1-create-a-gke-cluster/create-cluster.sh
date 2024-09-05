#!/bin/sh
PROJECT_ID=your-project-id
CLUSTER_NAME=your-cluster-name
ZONE=your-zone
gcloud container clusters create $CLUSTER_NAME \
  --zone=$ZONE \
  --project=$PROJECT_ID \
  --machine-type=e2-standard-2 \
  --release-channel=regular \
  --cluster-version=1.29 \
  --enable-autoscaling \
  --num-nodes=3 \
  --min-nodes=2 \
  --max-nodes=6
