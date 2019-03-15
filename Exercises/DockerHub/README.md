# Upload an image to Docker Hub

 > For this exercise the code should run in an evironmet with docker [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)
 
Once an image is build on local machine the way to upload image to docker Hub is:
> Login into Docker hub
`docker login`` with your user
> Tag created image 
`docker tag <image_name> <user>/myapp`
> Push image
`docker push <user>/myapp`

> Download image created
`docker pull <user>/myapp`