# plano-k8s

Kubernetes Project for Plano Apr 2019

Clone the project:

```
git clone https://github.com/matkeller/plano-k8s.git
```

Fix permissions and run:

```
cd plano-k8s
chmod +x deploy.sh build-1-node-cluster.sh

# If you don't have a cluster, then this will build a 1 node cluster with 2 CPU and 7.5 GB RAM
./build-1-node-cluster.sh

# Wait 5-10 minutes, then run:
./deploy.sh
```

Update your copy:

```
git pull
```
