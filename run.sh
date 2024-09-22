kubectl craete namespace webapp
kubectl apply -f backend-deployment.yaml -n webapp
kubectl apply -f proxy-deployment.yaml -n webapp
kubectl apply -f mysql-deployment.yaml -n webapp
kubectl apply -f backend-service.yaml -n webapp
kubectl apply -f proxy-service.yaml -n webapp
kubectl apply -f mysql-service.yaml -n webapp
kubectl apply -f db-data-pv.yaml -n webapp
kubectl apply -f db-data-pvc.yaml -n webapp
kubectl apply -f db-secret.yaml -n webapp
kubectl get all -n webapp
minikube service -n webapp--all