#!/bin/sh
VBoxManage sharedfolder add default --automount --name $1 --hostpath \\\\?\\c:\\0projects 
