#!/bin/bash

for i in {@}
do
    yum install $@ -y
done