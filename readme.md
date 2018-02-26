# Easyengine

Easyengine scripts the ability to install nginx and wordpress together.  Unfortunately, the wordpress functionality isn't quite working out of the
gate.  I suspect it's missing some environment variables and what not.  In the meantime, you can run the docker container.  It will install nginx
as part of the easyengine installation.

# Build it:
docker build -t easyengine .

# Launch it
docker run --name ee -P -d easyengine


## TO-DO:
Fix the wordpress installation.

