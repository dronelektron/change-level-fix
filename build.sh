#!/bin/bash

PLUGIN_NAME="change-level-fix"

cd scripting
spcomp $PLUGIN_NAME.sp -o ../plugins/$PLUGIN_NAME.smx
