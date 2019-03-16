# Cloud exercises
Master exercises to test cloud and docker management

# Continuous integration/delivery
[![Build Status](https://travis-ci.com/jacxon4/cloud-exercises.svg?branch=master)](https://travis-ci.com/jacxon4/cloud-exercises)

For testing purposes, there's a TravisCI job running from `Practice`sub-project that does the following
1. Create Docker image
    - ubuntu:18.04 
    - NodeJS 10
    - Run project at 8888 port 
2. Push it to [DockerHub](https://hub.docker.com/r/jacxon4/cloud_practice)