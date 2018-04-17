#!/bin/sh

if [ -n "$PASSWORD" && -n "$USER" ]; then 
    printf "$PASSWORD\n$PASSWORD\n'" | adduser $USER
fi

sockd
