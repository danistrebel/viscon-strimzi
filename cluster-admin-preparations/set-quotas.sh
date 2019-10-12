# Provide the number of users as argument
END=$1


for i in $(seq -f "%03g" 1 $END)
do
    namespace=viscon-$i
    oc apply -f cluster-admin-preparations/resource-quotas.yaml -n $namespace
done