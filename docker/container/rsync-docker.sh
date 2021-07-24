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
#//  Created: 30, May, 2021                                  //
#//  Modified: 24, july, 2021                                //
#//  file: -                                                 //
#//  -                                                       //
#//  Source: https://github.com/axiom-data-science/rsync-server                                               //
#//  OS: ALL                                                 //
#//  CPU: ALL                                                //
#//                                                          //
#//////////////////////////////////////////////////////////////

docker run -ti -p 2222:22 -v ${HOME}/.ssh/id_rsa.pub:/etc/authorized_keys/bensuperpc:ro -v $(pwd)/keys/:/etc/ssh/keys -v $(pwd)/data/:/data/ -e SSH_USERS="bensuperpc:1000:1000" -e RSYNC_MODE=true  docker.io/panubo/sshd:1.4.0
