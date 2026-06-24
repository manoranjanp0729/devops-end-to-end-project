Helm Installation

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

helm install prometheus prometheus-community/kube-prometheus-stack





kubectl get pods

kubectl get svc

kubectl port-forward svc/prometheus-grafana 3000:80
