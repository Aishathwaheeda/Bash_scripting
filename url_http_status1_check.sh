#!/bin/bash

url="https://www.guvi.in"
response=$(curl  -o /dev/null -s -w "%{http_code}" "$url")
echo "http response is $response"
if [ $response -ne 200 ]
then 
echo "$url is down"
else 
echo "$url is running"
fi
