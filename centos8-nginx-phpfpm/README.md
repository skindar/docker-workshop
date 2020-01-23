You can run that default template by using next command
    docker run -d -p 8080:80 fiedietsov/centos8-nginxphpfpm:latest

For your app you should mount folder to path /var/www/public and check nginx configs
    docker run -d -v /my-app:/var/www/public -p 8080:80 fiedietsov/centos8-nginxphpfpm:latest


Usefull commands:
    docker exec -it ididididi /bin/bash  -- go to running container
    docker build -t nameofmybuild .
    docker push nameofmybuild

    TO DELETE ALL RUNNING AND STOPPING CONTAINERS
        for i in `docker ps -a | cut -d " " -f 1| tail -n +2` ; do docker stop $i && docker rm $i ; done  
    TO DELETE ALL IMAGES
        docker rmi --force `docker images -a -q`


