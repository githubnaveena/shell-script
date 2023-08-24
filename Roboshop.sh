#!/bin/bash
Names=("Mongodb" "Redis" "MySql" "Rabbit" "Catalogue" "Cart" "User" "Shipping" "Payment" "Dispatch" "web")
Instance_type=""
Image_id="ami-03265a0778a880afb"
security_GID="sg-0a6fa56ad891297b0"
for i in "${Names[@]}"
do
 if [[ $i == "Mongodb" || $i=="MySql" ]]
then
    Instance_type="t3.medium" 
else
    Instance_type="t2.micro"  
fi      
echo "Name is $i"
ip_address=$(aws ec2 run-instances --image-id $Image_id --instance-type $Instance_type --security-group-ids
  $security_GID  --tag-specifications "ResourceType=instance,Tags= [{Key=Name,Value=$i}]" |  jq -r '.Instances[0].PrivateIpAddress')
    echo "created $i successfully with ip $ipaddress"
  done
