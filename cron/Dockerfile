FROM josefcs/alpine-tz-eu

MAINTAINER Josef.Seibl@gmail.com

# OVERWRITE the crontab for root with our own
# Note, that the default crontab contains entries for 15min, hourly, etc...
# so entries in /etc/.../15min won't work anymore
# add the follwong line and a crontab file to your app container
# COPY crontab /etc/crontabs/root

# Start cron in foreground and tell it to redirect its output to stdout
# so that it appears in the docker logs
ENTRYPOINT ["crond", "-f", "-L", "/dev/stdout"]
