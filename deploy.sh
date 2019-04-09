echo INFO: Deploying Gateway and MySQL
kubectl apply -f container-gateway-config.yml -f container-gateway-mysql.yml -f container-gateway.yml 
sleep 5

echo INFO: Deploying Live API Creator
kubectl apply -f lac-nps.yml
sleep 5

echo INFO: Exposing Gateway ports
kubectl expose deployment gw-dc --type=NodePort

echo   
echo kubectl get service
kubectl get service

echo  
echo kubectl get pods
kubectl get pods

echo
echo gcloud compute instances list
gcloud compute instances list


echo INFO: Please wait for Gateway to start...
