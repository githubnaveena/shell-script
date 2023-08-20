#!/bin/bash

for i in {@}
do
    sudo yum install $@ -y
done