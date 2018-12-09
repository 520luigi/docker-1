#From an alpine image you'll add to your container your favorite text editor, vim or 
#emacs, that will launch along with your container.

FROM alpine

RUN apk update && apk upgrade && apk add vim

CMD vim example.c

#to build the file: docker build -t [name] .
#to run the file: docker run --rm -it [same name as before]
#check the new image you build with: docker image ls
