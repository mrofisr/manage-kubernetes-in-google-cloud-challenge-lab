First you must enable it manualy Prometheus managed collection, you can runnig the following command:
```bash
CLUSTER_NAME=your-cluster-name
ZONE=your-zone
PROJECT_ID=yout-project-id
gcloud container clusters update $CLUSTER_NAME \
--enable-managed-prometheus \
--zone $ZONE \
--project $PROJECT_ID
```

After that you must create namespace based on the namespace name on challenge page, you can run the following command:
```bash
NAMESPACE=your-namespace kubectl create namespace $NAMESPACE
```
