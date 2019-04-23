echo INFO: Deploying Gateway and MySQL
kubectl apply -f container-gateway-config.yml -f container-gateway-mysql.yml -f container-gateway.yml --validate=false

echo 
echo INFO: Please wait for Gateway to start...
sleep 260

echo 
echo INFO: Deploying Live API Creator
kubectl apply -f lac-nps.yml --validate=false
sleep 20

echo INFO: Exposing Gateway ports
kubectl expose deployment gw-dc --type=NodePort

echo   
echo kubectl get service
kubectl get service

echo  
echo kubectl get pods
kubectl get pods

echo 
echo INFO:  The following line only works on Google Cloud
echo gcloud compute instances list
gcloud compute instances list

echo 
echo INFO: Pushing policy to Gateway via RESTMAN call
curl -k -u admin:CAdemo123! -H "Content-Type: application/xml" -X POST -d @lac-policy.xml https://192.168.99.100:31843/restman/1.0/services
sleep 10

echo 
echo INFO: Calling the deployed gateway service to proxy to Live API Creator!
curl -k -u admin:CAdemo123! https://192.168.99.100:31843/lac-policy
