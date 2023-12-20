FROM quay.io/jupyter/r-notebook:2023-12-14

# Configure environment
ENV DOCKER_IMAGE_NAME='datascience-env'
ENV VERSION='2023-12-19' 

# Install Python packages
ADD requirements.txt /
RUN pip install -r /requirements.txt

# Install R packages
ADD install_r_packages.R /
RUN Rscript /install_r_packages.R