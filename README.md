# Tweetsenti

## Getting Started
1. make sure conifg.py has correct twitter api keys/secrets
2. Enable docker to run GUI interface by following instructions [here](https://cntnr.io/running-guis-with-docker-on-mac-os-x-a14df6a76efc)
   * brew install socat 
   * socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\\"$DISPLAY\\"
   * brew install xquartz
   * open -a xquartz
   * check security->“allow connections from network clients”
3. get ip of the host mac os, usually ifconfig en0, let's say 192.168.1.14


## Starting container
Navigate to root repo directory  
`docker build --no-cache . --tag xiongm/tweetsenti`  
`docker run -it --rm -e DISPLAY=192.168.1.17:0 -v /tmp/.X11-unix/:/tmp/.X11-unix/ --mount type=bind,source="$PWD",target=/tweetsenti xiongm/tweetsenti:latest`


## Run tweetsenti
`cd /tweetsenti`  
`python3 ./pubsub.py`
