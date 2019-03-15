# Docker exercise
This exercise is intended to be run on a Linux environment. If you dont have Linux, then you can execute ``vagrant up`` and a Ubuntu environment will be created

Inside the Linux environment create a ``code``folder and inside run:
> docker build -t myapp .
> docker images

You should see a docker image created with the source code that this project contains

##Run the project
###Run the docker project
> ``docker run myapp`` will start the docker but traffic is closed
> ``docker run -p 8080:8080 myapp`` will link 8080 port inbound and outbound

Subsecuent runnings can be triggered without all parameters and using 
> ``docker start myapp``
This option should only be used on local environments, best use previous options

### Run commads directly 
Commands can be executed directly at the very same time of the running:
>``docker run -it <docker tag> <command_sentence>``

Run the application shuch way that is removed after closing it:
> ``docker run -d -p -rm <dockertag> ...``

### Run on background
> ``docker run -d -p 8080:8080 --name myapp myapp``
> ``docker ps`` will display current running dockers
> ``docker inspect myapp``will display full info of the docker

### Run command in running container
Running containers can run commands using different terminals and commands outside the initial one 

- No interactive shell
In one terminal run:
> ``docker run -d -p 8080:8080 --name myapp myapp``
> ``touch example.txt``

- Interactive shell
> ``docker run myapp shell``
> ``ls`` will display the file created on the other terminal

## Stop 
> ``docker stop my app``or ``docker kill myapp```

##Delete 
Changing parameters of the docker (i.e a port) the docker should be deleted first
> ``docker rm myapp``


## Log information
A good practice is to redirect the output to standard output so the logs are centralized otherwise when having several containers the logging process can be a mightmare


## Use other docker files
> ``docker build -f <other_dockerfile_path> -t myotherapp .``

## Modify parameters of the docker
### Provide environment variables

>``docker run -e MESSAGE=hola -p 8080:8080 myapp`` this variable will be available on the application

## Set machine limits

> Add to the execution ``--cpus=1`` or other options

## Uploadig image to registry 
It's important to create the image with the proper name, for that reason it should start with the ``regristry``name to indicate the origin (optionaly with ``:version``)
> ``docker tag myapp mynodeapp``
> ``docker login``
> ``docker login myregistry``
> ``docker push myorganization/myapp``