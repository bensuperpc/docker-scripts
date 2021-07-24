#!/usr/bin/env bash
set -euo pipefail
#//////////////////////////////////////////////////////////////
#//   ____                                                   //
#//  | __ )  ___ _ __  ___ _   _ _ __   ___ _ __ _ __   ___  //
#//  |  _ \ / _ \ '_ \/ __| | | | '_ \ / _ \ '__| '_ \ / __| //
#//  | |_) |  __/ | | \__ \ |_| | |_) |  __/ |  | |_) | (__  //
#//  |____/ \___|_| |_|___/\__,_| .__/ \___|_|  | .__/ \___| //
#//                             |_|             |_|          //
#//////////////////////////////////////////////////////////////
#//                                                          //
#//  Script, 2021                                            //
#//  Created: 27, May, 2021                                  //
#//  Modified: 24, July, 2021                                //
#//  file: -                                                 //
#//  -                                                       //
#//  Source: -                                               //
#//  OS: ALL                                                 //
#//  CPU: ALL                                                //
#//                                                          //
#//////////////////////////////////////////////////////////////

docker run \
    -e "BRANCH_NAME=lineage-18.1" \
    -e "DEVICE_LIST=guacamole" \
    -e "SIGN_BUILDS=true" \
    -e "SIGNATURE_SPOOFING=restricted" \
    -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend com.google.android.maps.jar FDroid FDroidPrivilegedExtension " \
    -v "/home/bensuperpc/lineage/lineage:/srv/src" \
    -v "/home/bensuperpc/lineage/zips:/srv/zips" \
    -v "/home/bensuperpc/lineage/logs:/srv/logs" \
    -v "/home/bensuperpc/lineage/cache:/srv/ccache" \
    -v "/home/bensuperpc/lineage/keys:/srv/keys" \
    -v "/home/bensuperpc/lineage/manifests:/srv/local_manifests" \
    lineageos4microg/docker-lineage-cicd
