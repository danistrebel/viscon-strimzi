# Provide the number of users as argument
END=$1

for ((i=1;i<=END;i++)); do
    namespace=viscon-$i
    space=$(sed "s/K8S_NAMESPACE/$namespace/g" cluster-admin-preparations/strimzi-rolebindings.yaml)
    echo "$space" | oc apply -f - -n $namespace
done