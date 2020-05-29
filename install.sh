#!/bin/bash
: '
# @author: Prathyush SP
# @Created on: 29/05/20
# Command: ./install.sh
#
'

$HOMEDIR=`pwd`
$TMPDIR=${HOMEDIR}/tmp
mkdir -p ${TMPDIR}

# Install nodejs v11.50 and Yarn
cd ${TMPDIR}
wget https://nodejs.org/download/release/v11.15.0/node-v11.15.0-linux-x64.tar.gz
wget https://github.com/yarnpkg/yarn/releases/download/v1.22.4/yarn-v1.22.4.tar.gz
tar -xvf node-v11.15.0-linux-x64.tar.gz -C ../node
tar -xvf yarn-v1.22.4.tar.gz -C ../yarn
PATH=${PATH}:${HOMEDIR}/node/bin:${HOMEDIR}/yarn/bin
cd ${HOMEDIR}

# Export paths. Dependencies are pre-configured in the repo. 
export PKG_CONFIG_PATH=$HOMEDIR
export CPATH=$HOMEDIR

# Compile Theia and built extensions and examples
yarn

