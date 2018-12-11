#From a debian image you will add the appropriate sources to create a TeamSpeak
#server, that will launch along with your container. It will be deemed valid if 
#at least one user can connect to it and engage in a normal discussion (no far-
#fetched setup), so be sure to create your Dockerfile with the right options.
#Your program should get the sources when it builds, they cannot be in your repo.

FROM debian

ENV TS3SERVER_LICENSE=accept

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget -y
RUN apt-get install bzip2 -y

#get from teamspeak.com/en/downloads/#server
RUN wget http://dl.4players.de/ts/releases/3.5.0/teamspeak3-server_linux_amd64-3.5.0.tar.bz2
RUN tar -xjvf teamspeak3-server_linux_amd64-3.5.0.tar.bz2
RUN rm teamspeak3-server_linux_amd64-3.5.0.tar.bz2

# Listen to required ports
EXPOSE 9987/udp 10011 30033
  # Port 9987/udp is default TeamSpeak 3 server port
  # Port 10011 is used for Server Query
  # Port 30033 is used for File transfer

CMD ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]

#docker build -t teamspeak .
#docker run -it --rm --name teamspeak --env TS3SERVER_LICENSE=accept -p 9987:9987/udp -p 10011:10011 -p 30033:30033 teamspeak
#Despite using the linux version on docker, you can still download the mac client to enter the server login and password
#gained from the output of the docker run code above.
