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
echo "export * from \"./"$NAME"\";" > index.js

# Generate module
echo "" > $NAME.js


# Generate tests

echo "import * as $NAME from \"./$NAME\";
describe(\"$NAME \", () => {
  it(\"\", () => {
    
  });
});" >$NAME.spec.js

# Generate docs

echo "$NAME module:
" > README.md 

echo "Module $NAME generated successfully!"