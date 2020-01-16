# Utility scripts 


## Install docker

`wget https://raw.githubusercontent.com/edwardcooper/network/master/docker_install.sh`

`chmod +x docker_install.sh`

`sudo ./docker_install.sh`

## Common docker commands for doing data analysis. 
### for any project that needs parallel computation

`docker run -it --rm -v "$PWD":/home/jovyan/work --shm-size=1024m -p 8888:8888 jupyter/datascience-notebook`

 
### run docker with 8888 already taken
`docker run -it --rm -v "$PWD":/home/jovyan/work --shm-size=1024m -p 9999:8888 jupyter/datascience-notebook`


### docker with tqdm

`docker run -it --rm -v "$PWD":/home/jovyan/work --shm-size=1024m -p 8888:8888 edwardcooper/data-science`
### docker with minimal-notebook 
docker run -it --rm -v "$PWD":/home/jovyan/work --shm-size=1024m -p 8888:8888 jupyter/minimal-notebook:latest

# ubuntu with python installed
docker run -it -v "$PWD":/home/ --net=host ubuntu-python

## Check signature and Sha256sum for ubuntu iso 

1. Download iso file and signature file (ending with .gpg) to the same directory. 

2. Dowload the verifying scripts. 

`wget https://raw.githubusercontent.com/edwardcooper/network/master/check_ubuntu_img.sh`

`chmod +x check_ubuntu_img.sh`

`./check_ubuntu_img.sh`


## Download and verify tails ios

`wget https://raw.githubusercontent.com/edwardcooper/network/master/check_tails.sh`

`chmod +x /check_tails.sh`

`./check_tails.sh`
