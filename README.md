### initialize

    terraform init

### preview terraform actions

    terraform plan

### apply configuration with variables

    terraform apply -auto-approve

### destroy a single resource

    terraform destroy -target aws_vpc.app-vpc

### destroy everything fromtf files

    terraform destroy -auto-approve

### show resources and components from current state

    terraform state list

### show current state of a specific resource/data

    terraform state show aws_vpc.app-vpc    



### set aws configuration through env variables

    export AWS_ACCESS_KEY_ID="anaccesskey"
    export AWS_SECRET_ACCESS_KEY="asecretkey"
    export AWS_DEFAULT_REGION="us-west-2"

### Make sure kube config is configured and you are able to access your cluster Run following command to verify:
    kubectl get svc
###run below command to deploy The hello App in EKS Cluster :
    kubectl apply -f hello-deploy.yaml
