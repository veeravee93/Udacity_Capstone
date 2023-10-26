dockerpath=harishbabua/capstone
# Step 2
# Run the Docker Hub container with kubernetes
r=$(kubectl get pod capstone 2> /dev/null;echo $?)

if [ "_$r" == "_1" ] ; then
    kubectl run capstone \
    --image=$dockerpath \
    --image-pull-policy="Always" \
    --overrides='{"apiVersion": "v1", "spec":{"imagePullSecrets": [{"name": "regcred"}]}}'
fi

 
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward capstone 8000:80