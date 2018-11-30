#!/bin/bash
#
# deploy the js backend to Zeit
#
# https://zeit.co/docs/features/now-cli

#
# list existing instance
#
now list regexplanet-js

#
# deploy new one
#
now --public && now alias

#
# move alias to new one
#
# now alias greek normal

#
# delete old one
#
#now rm 
