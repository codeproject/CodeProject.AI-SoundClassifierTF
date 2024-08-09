#!/bin/bash

# Development mode setup script ::::::::::::::::::::::::::::::::::::::::::::::
#
#                         SoundClassifier TensorFlow
#
# This script is called from the SoundClassifierTF directory using: 
#
#    bash ../../CodeProject.AI-Server/src/setup.sh
#
# The setup.sh script will find this install.sh file and execute it.
#
# For help with install scripts, notes on variables and methods available, tips,
# and explanations, see /src/modules/install_script_help.md

if [ "$1" != "install" ]; then
    read -t 3 -p "This script is only called from: bash ../../CodeProject.AI-Server/src/setup.sh"
    echo
    exit 1 
fi


if [ "$moduleInstallErrors" == "" ]; then
    echo
    # Download the TF models and store in /data
    getFromServer "models/" "sound-classification-models-tf.zip" "data" "Downloading sound classification models..."

    # TODO: Check assets created and has files
    # moduleInstallErrors=...
fi