#!/bin/bash

PLUGIN_NAME="change-level-fix"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -o ../plugins/$PLUGIN_NAME.smx
