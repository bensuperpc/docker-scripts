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
#//  Created: 01, June, 2021                                 //
#//  Modified: 24, July, 2021                                //
#//  file: -                                                 //
#//  -                                                       //
#//  Source:                                                 //
#//  OS: ALL                                                 //
#//  CPU: ALL                                                //
#//                                                          //
#//////////////////////////////////////////////////////////////

docker pull debian:bullseye
docker pull debian:bookworm
docker pull debian:latest

docker pull ubuntu:18.04
docker pull ubuntu:20.04
docker pull ubuntu:22.04
docker pull ubuntu:latest

docker pull alpine:3.14
docker pull alpine:3.15
docker pull alpine:3.16
docker pull alpine:latest

docker pull python:debian
docker pull python:alpine
docker pull python:3.8.13-alpine3.16
docker pull python:3.9.13-alpine3.16
docker pull python:3.10.5-alpine3.16

docker pull tensorflow/tensorflow:2.9.1-gpu
docker pull tensorflow/tensorflow:2.9.1
docker pull tensorflow/tensorflow:latest
docker pull tensorflow/tensorflow:latest-gpu

