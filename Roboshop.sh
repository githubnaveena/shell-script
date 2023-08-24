#!/bin/bash
Names=("Mongodb" "Redis" "MySql" "Rabbit" "Catalogue" "Cart" "User" "Shipping" "Payment" "Dispatch" "web")
Instance_type=""
for i in "${Names[@]}"
do
 if ($i == "Mongodb" || $i=="MySql")
then
    instance_type = "t3.medium"
else
    instance_tyoe="t2.micro"  
fi      
echo "Name is $i"
aws ec2 run-instances --image-id ami-03265a0778a880afb --instance-type t2.micro --security-group-ids sg-0a6fa56ad891297b0
echo "created $i successfully"
done
