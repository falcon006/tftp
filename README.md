### tftp container
# README.md
[![forthebadge](https://forthebadge.com/images/badges/no-ragrets.svg)](https://forthebadge.com)


## Overview

There was a handful of examples, but non of them seem to function correctly out of the box for me. This example is useful if you need a temporary tftp service.

## Usage

### compose

    sudo docker compose up

### command line

    sudo docker build -t tftp .
    sudo docker run -ti --network host  -v $(pwd):/var/tftpboot  tftp


## Testing

    tftp 127.0.0.1
    tftp> get README.md
    Received 286 bytes in 0.0 seconds
    tftp> quit
    ls -l README.md 
    -rw-r--r-- 1 falcon006 falcon006 277 Apr 30 17:28 README.md

