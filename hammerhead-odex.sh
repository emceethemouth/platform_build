#!/bin/bash
# Android Open Source Project
#
# Rom script builder for AOSP build
#
# Created by: Jean Francis Dominique S. Mabalot (Gnome)
# Copyright 2014
#

echo ""
echo ""
echo "Start Compilation for Hammerhead"
echo ""
echo ""

cd ..
echo "cleaning directories..."
make clean
echo ""
echo "start"
. build/envsetup.sh
lunch 9
echo ""
echo "Building Hammerhead Odex"
echo ""
time make otapackage -j4 WITH_DEXPREOPT=true 2>&1 | tee build.log

echo "build done"
echo ""
echo ""
echo "If ever you encounter any errors, just check the build.log"
echo ""
echo ""
echo "Script done by Gnome@xda-developers.com"
echo ""
echo ""
