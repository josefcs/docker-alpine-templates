# docker-alpine-templates

Snippets and Dockerfile templates that show how to create docker images for the most common use-cases with alpine

# Motivation

Moving from debian (and ubuntu linux) to alpine linux as docker base does indeed
save a lot of time and space for the images their builds.
But on the other hand, if you are not yet familiar with alpine (like I am), you
need to learn a few new things - and possibly invest the saved time into
alpine ;-)

This is my collection of useful snippets, best practices and how tos for docker
images built with alpine linux as their base.

# From debian to alpine linux

The first thing I noticed was: alpine seems to keep more to the standards the
package was delivered with. E.g. the package `apache2`: Originally,
the executable is called `httpd` (`apache2` in debian), the config resides in
`/etc/httpd` and has no subdirectories like `/etc/apache2/sites-available` in debian.

So, you need to check at first, what the difference from the to-be installed
package to the debian package is. Migration is not always fast and easy, but
in most cases straightforward.
In some cases, the Dockerfile is smaller and lighter than before. Look at
`alpine-cron` and how simple it is. The original debian setup was a little bit
more complicated ;-)
In other cases, the Dockerfile can become more complicated (at least for me).
e.g. the `mysql-server` or `apache2`-setup.

# Description of images

## alpine-cron

## alpine-jar

## alpine-alpine-timezone

# Best practices

## Creating the `Dockerfile`

TODO:

* Find out what package to install (pkgs online)
* Test the installation (run cmd)
