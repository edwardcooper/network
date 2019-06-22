# Utility scripts 


## Install docker

`wget https://raw.githubusercontent.com/edwardcooper/network/master/docker_install.sh`

`chmod +x docker_install.sh`

`sudo ./docker_install.sh`

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
