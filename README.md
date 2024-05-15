# Docker Image for basic data science

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/gabnasello/datascience-env/HEAD)

# Build the docker images

From the project folder, run the command below:

```bash build.sh```

# Run docker container

## Standard approach (recommended)

From the project folder, run the command below:

```docker-compose up```

## Alternative approach

You can run the following command:

```docker run -p 8888:8888 --name datascience gnasello/datascience-env:latest```