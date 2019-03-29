#!/bin/bash

#--------------------------------------------
# purpose: install proteus tarballs
#
# author: greg.burgreen@msstate.edu
#         Mississippi State Univ
#         version 2019.03.29
#--------------------------------------------

if [ -z "$1" ]; then 
  echo usage: $0 \<spack_dir\>
  echo where \<spack_dir\> is the preferred name of your spack repo
  echo 
  echo For example, $0 ../stack-2019.02.11
  exit
fi

current=$(pwd)

scripts=stack-proteus-scripts.tar
thirdparty=stack-proteus-thirdparty.tar.gz
var=stack-proteus-var.tar

#--------------------------------------------
# 1. unarchive tarballs
#--------------------------------------------

echo Installing tarballs

cd $1

tar xf $current/$script
tar xf $current/$var
tar xf $current/$thirdparty

