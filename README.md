# docker-alpine-templates

This is my collection of useful snippets, best practices and how-tos for docker
images built with alpine linux as their base (and some directions if you are
coming from a debian based docker image base).

Ready to clone as a starting base for your own projects :-)


# Motivation

Moving from debian (and ubuntu linux) to alpine linux as docker base does indeed
save a lot of time and space for the images their builds.
But on the other hand, if you are not yet familiar with alpine (like I am), you
need to learn a few new things - and possibly invest the saved time into
alpine.


# From debian to alpine linux

The first thing I noticed was: alpine seems to keep more to the standards the
package was delivered with. E.g. the package `apache2`: Originally,
the executable is called `httpd` (`apache2` in debian), the config resides in
`/etc/httpd` and has no subdirectories like `/etc/apache2/sites-available` in
debian.

So, you need to check at first, what the difference from the to-be installed
package to the debian package is. Migration is not always fast and easy, but
in most cases straightforward.
In some cases, the Dockerfile is smaller and lighter than before. Look at
`alpine-cron` and how simple it is. The original debian setup was a little bit
more complicated ;-)
In other cases, the Dockerfile can become more complicated (at least for me).
e.g. `mysql-server` or `apache2`-setup.


# Description of images

## alpine-cron

## alpine-jar

## alpine-alpine-timezone


# Best practices

## busybox

alpine uses `busybox` for its basic shell commands, which need different
parameter names than the 'normal' linux distro tools. That means you should
look up the commands at https://busybox.net/downloads/BusyBox.html and cannot
use the man pages from the net (or your host distro). This also implies that if
you already had setup scripts with `adduser` (or `useradd`), you have to migrate
them.

## bash

`bash` is not installed by default in alpine, but you can install it with
`apk-install bash`. However, I would suggest that you move your shell scripts to
`sh` if possible. This means, if you want to shell into a container, you have to
run

  docker exec -it my_instance sh

instead of

  docker exec -it my_instance bash

## Searching for packages

You can find the packages at https://pkgs.alpinelinux.org/packages. From my
experience, the packages are very well maintained and all "big" packages are
there.
To find a package, enter the name you know from your distro and add a `%` at the
end. In some cases when there is no installation candidate (like `cron`/`crond`),
it is built in due to busybox.

I don't know yet, what to do if the desired package does not exist in alpine
(except from writing a build script within the Dockerfile).


## Creating the `Dockerfile`

TODO:

* Find out what package to install (pkgs online)
* Test the installation (run cmd)


# Useful links

* https://github.com/gliderlabs/docker-alpine
* https://hub.docker.com/_/alpine/
* https://busybox.net/downloads/BusyBox.html
* https://pkgs.alpinelinux.org/packages
