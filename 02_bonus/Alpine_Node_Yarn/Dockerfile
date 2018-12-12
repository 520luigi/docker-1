FROM ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y nodejs npm git vim emacs

RUN npm install yarn --global && npm install npm --global

#This install node.js environment using yarn.
#Build with:
#docker build -t [name] .
#Run with:
#docker run -it -d [same name]
#Once inside the new container environment (similar to ubuntu terminal) use vim to make
#a js file with:
#console.log('Put this to the screen!');
#console.log('The node.js environment works!');
#and run: node <filename>.js
#to see those words printed into the container environment!
