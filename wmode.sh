#!/bin/bash

if [ -z $1 ] ; then
git config --get core.autocrlf | grep "input" -q && echo "linux"
git config --get core.autocrlf | grep "true" -q && echo "windows"
elif [ $1 == "on" ] ; then
    git config --global core.autocrlf true
    echo "now on windows mode"
elif [ $1 == "off" ] ; then
    git config --global core.autocrlf input
    echo "now on linux mode"
elif [ $1 == "help" -o $1 == "--help" ] ; then
    echo "wmode [option]"
    printf "option\t\tdescription\n"
    printf "on\t\tenable windows mode\n"
    printf "off\t\tdisable windows mode\n"
    echo "--help"
    printf "help\t\tdisplay help\n"
else
    echo "invalid option, use help"
fi
#if wmode on then set core.autocrlf to true
