#!/bin/sh
image="jhazelwo/pagent"
name="--hostname=server01"
modules="-v /media/sf_GitHub:/mnt"
remove="--rm=true"
docker run $name $remove -ti $modules $image /bin/bash

