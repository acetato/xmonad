#!/bin/bash

MUTE=`amixer | grep "off"`

if [[ $MUTE ]]; then
    echo "off"
else
    echo "on"
fi
