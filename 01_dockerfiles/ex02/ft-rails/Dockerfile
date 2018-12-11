#You are going to create your first Dockerfile to containerize Rails applications. That's
#a special configuration: this particular Dockerfile will be generic, and called in another
#Dockerfile, that will look like this:

#FROM     ft-rails:on-build
#
#EXPOSE	  3000
#CMD      ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]

#Your generic container should install, via a ruby container, all the necessary dependecies
#and gems, then copy your rails application in the /opt/app folder of your container. Docker
#has to install the appropriate gems when it builds, but also launch the migrations and the db
#population for your application. The child Dockerfile should launch the rails server. If you
#don't know what commands to use, it's high time to look at the Ruby on Rails documentation.

FROM ruby

RUN apt-get update -y && \
    apt-get upgrade -y && \
	apt-get install nodejs -y && \
	gem install rails bundler

ONBUILD WORKDIR /opt

ONBUILD RUN rails new app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install
ONBUILD RUN rails generate migration CreateProducts name:string
ONBUILD RUN rake db:migrate

#just run the run.sh file, don't try to memorize the mess, takes like 15 minutes to download
#all the ruby dependencies!
