# Docker + Node.js

Dockerize a Node.js app. 

How To ?

1. How to Build Docker File ?
> Run this: docker build -t fireship/demoapp:1.0 .
-t : name tag which is allows docker to remember 
Recommendation: Setup a username on dockerHub, followed by whatever you want to call the image. Ex: fireship/demoapp:1.0
Dont forget the "."

2. How to run a Docker Image ?
> Execute this command "docker run imageID"  (Ex: docker run 01bada503921)
> When you execute this you, you will "In use" on the DockerDesktop for this image

3. How to run a Docker Image with port forwarding ?
> Exc: "docker run -p PortOnLocal:TargetPort imageID"  (docker run -p 5000:8080 01bada503921)
> Then go to browser and type  in: localhost:5000.

4. How to stop the Docker Container ?
> You can use Docker Desktop to manually stop the container

5. How to create a volume ? 
> Exc: docker volume create  (EX: docker volume create shared-stuff)

6. How to debug DockerContainer ? 
> Use DockerDesktop to check the logs and inspects files


7. How can i execute Docker commands ?
> User DockerDesktop CLI to execute commands to a running container
or
> Go to Terminal and type in "docker exec [OPTIONS] CONTAINER COMMAND [ARG...]"

8. How to run Docker compose file ? 
Run this from the command line
> docker-compose up
Once executed, you will see multiple containers running on DockerDesktop


Debug
Q. Why cant I acces the program from port 8080 ?
- Because there is no port forwarding enabled.
- Use the p flag to enable port forwarding from container to local machine

Q. Cannot access localhost 5000 using docker compose ?
- Delete all the volume, images and containers
- Bounce 


Questions
Q. What is a volume ?
- Dedicated folder in the host machine to store files
- Contain files that can be remounted on other containers

Q. What is the purpose of docker-compose ?
- Run multiple docker containers which perform different task

Tips
- Docker Container will still be running even after you close the terminal window
- When you stop container, any state or data inside the container is lost. But you can place them in offline storage 
- 1 Process PER CONTAINER
