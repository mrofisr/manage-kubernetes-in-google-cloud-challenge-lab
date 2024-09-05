```bash
CLUSTER_NAME=your-cluster-name
ZONE=your-zone
PROJECT_ID=your-project-id
gcloud container clusters update $CLUSTER_NAME \
--enable-managed-prometheus \
--zone $ZONE \
--project $PROJECT_ID
```
