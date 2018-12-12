FROM alpine:latest

# Update SSL so that wget can read https sites
RUN apk update
RUN apk add ca-certificates wget && update-ca-certificates
RUN apk add curl jq

# Install gotty
WORKDIR /tmp
RUN wget https://github.com/yudai/gotty/releases/download/v0.0.13/gotty_linux_amd64.tar.gz
RUN tar -zxvf gotty_linux_amd64.tar.gz
RUN mv gotty /usr/local/bin/gotty


# Expose the gotty port
EXPOSE 8080

WORKDIR /usr/workdir

# Install and run the startup script
CMD gotty -p 8080 -w /bin/sh

#build with: docker build -t [name] .
#run with:   docker run -it -p 8080:8080 [name]
#go to URL: <docker-machine ip>:8080
