#!/usr/bin/env bash
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
#//  Created: 28, May, 2021                                  //
#//  Modified: 25, July, 2021                                //
#//  file: -                                                 //
#//  -                                                       //
#//  Source: https://stackoverflow.com/a/26339869/10152334                                               //
#//          https://github.com/fjh1997/docker_named_volume_backup/blob/master/backup_docker_volume.sh
#//  OS: ALL                                                 //
#//  CPU: ALL                                                //
#//                                                          //
#//////////////////////////////////////////////////////////////

VOLUME_NAME=$1

usage() {
  echo "Usage: $0 [volume name]"
  exit 1
}

if (( $# == 0 )); then
  echo "Error: missing container name parameter."
  usage
fi

docker run --rm --volume "${VOLUME_NAME}":/dbdata --volume "$(pwd)":/backup ubuntu tar cvf /backup/"${VOLUME_NAME}".tar /dbdata
#docker run --rm --volume "${VOLUME_NAME}":/dbdata --volume "$(pwd)":/backup ubuntu tar -I 'xz -9' -cvf /backup/"${VOLUME_NAME}".tar.xz /dbdata
