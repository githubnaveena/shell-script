#!/bin/bash
Names=("Mongodb" "Redis" "MySql" "Rabbit" "Catalogue" "Cart" "User" "Shipping" "Payment" "Dispatch" "web")
for i in "${Names[@]}"
do
echo "Name is $i"
done
