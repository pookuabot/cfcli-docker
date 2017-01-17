CFCLI Docker
=============

This is a little dockerfile I created to use as my DNS Management Server.

Run the following to install create the Docker image:
```
docker build -t pookuabot/cfcli .
```

Once the image is created, run the following to create a Docker Container:
```
docker run -it pookuabot/cfcli /bin/bash
```

Use the following to create an A Record:
```
cfcli add -t A test XXX.XXX.XXX.XXX
```

To find different options, run the following:
```
cfcli help
```
