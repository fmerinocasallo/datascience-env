# Docker Image for basic data science

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/gabnasello/datascience-env/HEAD)

# Build the Docker Image

From the project folder, run the command below:

```bash build.sh```

# Run Docker container

## docker-compose approach (recommended)

Be aware that the user ```researcher``` within you Docker container won't share the same ID as the host user!

From the project folder, run the command below:

```docker-compose up -d```

To connect to a container that is already running ("datascience" is the service name):

```docker-compose exec datascience /bin/bash```

Close the container with:

```docker-compose down```

## Alternative approach

You can run the following command:

```docker run -d -it --rm  -p 7777:7777 -p 7878:7878 --volume $HOME:/home/researcher --user root --name datascience gnasello/datascience-env:latest```

To connect to a container that is already running ("datascience" is the container name):

```docker exec -it datascience /bin/bash```

After use, you close the container with:

```docker rm -f datascience```