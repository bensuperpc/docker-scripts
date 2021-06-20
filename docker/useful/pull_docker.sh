#!/bin/bash
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
#//  Created: 01, June, 2021                                 //
#//  Modified: 21, June, 2021                                //
#//  file: -                                                 //
#//  -                                                       //
#//  Source:                                                 //
#//  OS: ALL                                                 //
#//  CPU: ALL                                                //
#//                                                          //
#//////////////////////////////////////////////////////////////

docker pull debian:jessie
docker pull debian:stretch
docker pull debian:buster
docker pull debian:bullseye
docker pull debian:latest

docker pull ubuntu:14.04
docker pull ubuntu:16.04
docker pull ubuntu:18.04
docker pull ubuntu:20.04
docker pull ubuntu:latest

docker pull alpine:3.8
docker pull alpine:3.9
docker pull alpine:3.10
docker pull alpine:3.11
docker pull alpine:3.12
docker pull alpine:3.13
docker pull alpine:3.14
docker pull alpine:latest

docker pull python:alpine
docker pull python:3.9.5-alpine3.13
docker pull python:3.9.5-alpine3.12
docker pull python:3.8.10-alpine3.13
docker pull python:3.8.10-alpine3.12

docker pull tensorflow/tensorflow:2.5.0-gpu
docker pull tensorflow/tensorflow:2.5.0
docker pull tensorflow/tensorflow:latest
docker pull tensorflow/tensorflow:latest-gpu

#docker pull gcc:latest
#docker pull tensorflow/tensorflow:latest
