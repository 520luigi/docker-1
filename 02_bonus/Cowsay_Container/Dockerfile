FROM debian

RUN apt-get update && apt-get install -y cowsay fortune lolcat

ENTRYPOINT /usr/games/fortune | /usr/games/cowsay | /usr/games/lolcat

#build with: docker build -t [name] .
#run with:   docker run -it [name]
#rerun with the same code for other outputs of cool game cow quotes!
