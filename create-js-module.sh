#!/bin/bash
# Author:       Miguel Espinoza
# Email:        miguespinoza1@gmail.com
# Date:         10/17/2019
# Usage:        create-js-module.sh module-name
# Description:
# A simple bash script that generates a js module Folder in 
# the format I personally like

set -e

NAME=$1
mkdir $NAME
cd $NAME

# Generate `index.js`
echo "export * from \"./"$NAME"\";" > index.ts

# Generate module
echo "

export default function $NAME(){
  
}

" > $NAME.ts


# Generate tests

echo "import $NAME from \"./$NAME\";
describe(\"$NAME \", () => {
  it(\"\", () => {
    
  });
});" >$NAME.spec.ts

echo "Module $NAME generated successfully!"