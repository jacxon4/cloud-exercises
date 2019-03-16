#!/bin/bash

HOST="<TODO_IP>"
USER="ec2-user"
KEY="~/.ssh/<TODO_FILE_PEM>"

ssh -i $KEY $USER@$HOST \
    "sudo yum install docker -y && sudo service docker start \
    && sudo docker run -d -p 80:8888 jacxon4/cloud_practices"