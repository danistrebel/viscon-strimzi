# Provide the number of users as argument
END=$1


for i in $(seq -f "%03g" 1 $END)
do
    namespace=viscon-$i
    space=$(sed "s/K8S_NAMESPACE/$namespace/g" cluster-admin-preparations/strimzi-rolebindings.yaml)
    echo "$space" | oc apply -f - -n $namespace
done