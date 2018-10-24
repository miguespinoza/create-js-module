# create-js-module

- [create-js-module](#create-js-module)
  - [Introduction](#introduction)
  - [Usage](#usage)
  - [Installation](#installation)
  - [TL;DR](#tl;dr)
  - [Generated Files](#generated-files)
    - [index.js](#indexjs)
    - [MyModule.js](#MyModulejs)
    - [MyModule.spec.js](#MyModulespecjs)
    - [MyModule.style.module.scss](#MyModulestylemodulescss)
    - [README.md](#readmemd)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

## Introduction

A simple bash script that generates a React Component Folder in the format I personally like:

`create-js-module MyModule` will generate:

- MyModule/
  - [index.js](#index.js)
  - [MyModule.style.module.scss](#MyModule.style.module.scss)
  - [MyModule.js](#MyModule.js)
  - [MyModule.spec.js](#MyModule.spec.js)
  - [README.md](#README.md)

See descriptions of all files [below](#generated-files).

## Usage

```bash
create-js-module.sh ComponentName
```

## Installation

This is a plain simple bash script. You can add it to your path by adding this line to your .`profile` file:

```sh
export PATH="${PATH}:~/bin"
```

and placing the script in your `~/bin` folder.

> 💡 **Tip:** If you use **VSCode** you can right-click on the folder you want the new component and open a terminal there to use this script.

You can create an alias like **cjsm** to make this easier:

```sh
alias cjsm=create-js-module.sh
```

> 💡 **Tip:** You can add this to your `.profile` file to have this alias forever.

> Don't forget to add excecutable permissions to the script: `chmod +x create-js-module.sh`

## TL;DR

Just paste this in your terminal:

```sh
mkdir -p ~/bin && curl https://raw.githubusercontent.com/miguespinoza/create-js-module/master/create-js-module.sh --output ~/bin/create-js-module.sh && echo -e 'export PATH="${PATH}:~/bin"\nalias cjsm=create-js-module.sh' >> ~/.profile && source ~/.profile && echo "Done you lazy person..."
```

There, use `cjsm MyModule` 🤦‍

## Generated Files

### index.js

A simple index that forwards all the exports from the Main Javascript File.

```js
export * from "./MyModule";
```

### MyModule.js

Main module. this is where you export your module functions


### MyModule.spec.js

The place to put your tests

```js
import * as MyModule from \"./MyModule\";
describe(\"MyModule \", () => {
  it(\"\", () => {
    
  });
});
```

### README.md

Readme for the module documentation

