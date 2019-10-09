# Provide the number of users as argument
END=$1

for i in $(seq -f "%03g" 1 $END)
do
    access_token=viscon-$(openssl rand -hex 3)
    space=$(sed "s/ACCESS_TOKEN/$access_token/" cluster-admin-preparations/viscon-kita-workspace.yaml)
    space=$(echo "$space" | sed "s/USER_ID/viscon-$i/")
    echo "---"
    echo "$space"
done