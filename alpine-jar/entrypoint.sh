 #!/bin/sh

 # Note, that in alpine, bash is not installed per default, so if you want
 # to use /bin/bash here, you have to install it in the Dockerfile

echo "Starting up system"

# Set environment variables here or react to them

if [ "${RELEASE_TYPE}" == "dev" ]; then
  echo "Starting in dev mode"
  java -Xmx1024m -jar /srv/my-jar.jar
elif [ "${RELEASE_TYPE}" == "production" ]; then
  echo "Starting in production mode"
  java -Xmx512m -jar /srv/my-jar.jar
else
  >&2 echo "wrong RELEASE_TYPE: ${RELEASE_TYPE}"
  exit 1
fi
