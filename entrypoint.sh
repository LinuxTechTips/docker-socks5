#!/bin/sh

printf "$PASSWORD\n$PASSWORD\n'" | adduser $USER

sockd
