kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# if you want access via NodePort, just download above to local machine, change server called "argocd-server" to NodePort before running install.
# vi install.yaml
# kubectl apply -n argocd -f install.yaml

kubectl -n argocd get pod -w

# access Argo web UI
# default user: admin
# get initial password from command below
kubectl -n argocd get secret argocd-initial-admin-secret -o yaml

# grab the password, it is in base64 encoding format, you have to decode to get actual passwrod
echo <encoded-password>== | base64 --decode

# you will you password like this, "xLJEaoRVruCmaJr5%", remove the ending % before use.
