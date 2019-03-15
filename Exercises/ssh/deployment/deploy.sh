#!/bin/bash

set -e

cd "$(dirname "$0")"

pwd

USER=vagrant
PASSWORD=vagrant
HOST=192.168.33.10
IDENTIFICATION="../vm/.vagrant/machines/default/virtualbox/private_key"

echo "Installing dependencies..."
ssh -i $IDENTIFICATION -o StrictHostKeyChecking=no $USER@$HOST "sudo apt-get update && sudo apt-get install python python-pip -y"

echo "Copying files..."
ssh -i $IDENTIFICATION -o StrictHostKeyChecking=no $USER@$HOST "sudo mkdir -p /opt/app"
ssh -i $IDENTIFICATION -o StrictHostKeyChecking=no $USER@$HOST "sudo chmod 777 /opt/app"
scp -r -i $IDENTIFICATION -o StrictHostKeyChecking=no ../code/ $USER@$HOST:/opt/app
ssh -i $IDENTIFICATION -o StrictHostKeyChecking=no $USER@$HOST "sudo chmod 777 /opt/app/*"

echo "Installing project dependencies..."
ssh -i $IDENTIFICATION -o StrictHostKeyChecking=no $USER@$HOST "sudo pip install -r /opt/app/code/requirements.txt"

echo "Running the application..."
ssh -i $IDENTIFICATION -o StrictHostKeyChecking=no $USER@$HOST "python /opt/app/code/app.py &"