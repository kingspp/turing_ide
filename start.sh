#!/bin/bash
: '
# @author: Prathyush SP
# @Created on: 29/05/20
# Command: ./start.sh <PORT>
#
'

# Run IDE
HOMEDIR=`pwd`
cd ${HOMEDIR}/theia/examples/browser/ && nohup env PATH=${PATH}:${HOMEDIR}/node/bin:${HOMEDIR}/yarn/bin yarn run start --port $1 &
