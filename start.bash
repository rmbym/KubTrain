echo"Creating the pods";
kubectl create -f site-pod.yaml;

# To see ip of the pod
kubectl get pods -o wide;

# To see the cluster ip
kubectl get services ;

# get svc to see the cluster ip
# To log in the clusester with Cli
##minikube ssh ==> then(can curl to the ip of the pod)
# either connect a Pod to replicasets + service to app manually || Use a deployment which manages pods and replicaset

echo "To Create Replicaset";
kubectl create -f site-replicaset.yaml;

## Show details of a replicaSet
kubectl describe replicasets etherealsite-rs;
kubectl get rs;

## or kubectl get pods -o wide to see pods replicated
echo "scale replicaset to 4";
kubectl scale --replicas=4 replicaset etherealsite-rs;

# to delete all pods || one pod
## kubectl delete pods --all || kubectl delete pods <podname>
