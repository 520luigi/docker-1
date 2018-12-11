#Use the following code to build and run the gitlab setup
#this is also on port 3000 as ruby rails, so just turn off
#rubyrail container before then start this one again.

time docker build -t gogs .
time docker run -d -it --name gitgogs -p 3000:3000 gogs

#When you used the docker run, open up on the URL the 
#docker-machine ip with port 3000. Next choose, sqlite3
#for database type, root for run user, docker-machine ip
#for domain, and http://<docker-machine ip>:3000/ for 
#application URL. Fill out an Admin Account Settings 
#with any username, password, and email that you want.
#Finally, go in and create a repo to test the new
#local git that you made! Hue hue hue!
