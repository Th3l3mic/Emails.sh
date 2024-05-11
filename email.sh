#!/bin/bash


read -p "[+] Enter the website URL to extract emails from: " website_url


wget -q -O 2.txt $website_url

perl -ne'if(/[\w\.\-\_]+@([\w\-\_]+\.)+[A-Za-z]{2,4}/g){print "$&\n"}' 2.txt | sort | uniq > emails
echo "----------------------------"
echo "[+] Found emails >>>>>> "

echo "----------------------------"
cat emails
rm 2.txt

