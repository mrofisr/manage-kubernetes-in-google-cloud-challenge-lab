The new Cymbal Shops e-commerce website will run natively on GKE and the team would like to see your experience working and setting up clusters. In this section, you will need to create a Kubernetes cluster based on a set of configurations provided to run your demo applications on.

1. Before we start creating the GKE cluster, we must check the release notes for the latest version of GKE. This is important because the latest version of GKE may have new features and bug fixes that are not available in the older versions. The release notes can be found [here](https://cloud.google.com/kubernetes-engine/docs/release-notes).
2. To start create the GKE cluster, we will need to create a shell script that will be used to create the cluster. The shell script should be named `create-cluster.sh` and should be placed in the root directory of the project.

```bash
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
```

3. You will need to replace the `PROJECT_ID`, `CLUSTER_NAME`, and `ZONE` with your own values. The `PROJECT_ID` is the ID of the Google Cloud project where the cluster will be created. The `CLUSTER_NAME` is the name of the cluster that will be created. The `ZONE` is the zone where the cluster will be created. The `PROJECT_ID`, `CLUSTER_NAME`, and `ZONE` based on Challenge Lab.
4. Run the shell script to create the GKE cluster by running the following command:

```bash
sh create-cluster.sh
```

5. Wait until the GKE cluster has been created. This may take a few minutes. After the GKE cluster has been created, you can check the status of the cluster by running the following command:

```bash
gcloud container clusters list
gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE --project $PROJECT_ID
kubectl get nodes
```
