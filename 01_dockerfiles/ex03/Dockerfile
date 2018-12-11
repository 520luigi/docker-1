#Docker can be useful to test an application that's still being developed without
#polluting your libraries. You will have to design a Dockerfile that gets the
#development version of Gitlab installs it with all the dependencies and the
#necessary configurations, and launches the application, all as it builds. The
#container will be deemed valid if you can acess the web client, create users and
#interact via GIT with this container (HTTPS and SSH). Obviously, you are not
#allowed to use the official container from Gitlab, it would be a shame...

FROM debian:sid

RUN apt-get update
# installing git, golang sqlite openssl
RUN apt-get install --no-install-recommends build-essential ca-certificates \
	git golang-go sqlite libsqlite3-dev openssl openssh-server -y && \
	mkdir -p /root/go/src/github.com/gogs && \
	cd /root/go/src/github.com/gogs && \
	git clone --recurse-submodules -b develop https://github.com/gogs/gogs && \
	cd gogs && \
	go build -v -tags 'sqlite'

# run gogs and login as root
ENV USER="root"
WORKDIR /root/go/src/github.com/gogs/gogs
# port 3000
EXPOSE 3000 22
USER root
CMD ["./gogs", "web"]
