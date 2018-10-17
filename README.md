# create-react-component

A simple bash script that generates a React Component Folder in the format I personally like

## Usage

```bash
create-react-component.sh ComponentName
```

## Instalation

This is a plain simple bash script. You can add it to your path by adding this line to your .`profile` file:

```sh
export PATH="${PATH}:~/bin"
```

and placing the script in your `~/bin` folder.

> 💡 **Tip:** If you use **VSCode** you can right-click on the fo;der you want the new component and open a terminal there to use this script.

You can create an alias like **crc** to make this easier:

```sh
alias crc=create-react-component.sh
```

> 💡 **Tip:** You can add this to your `.profile` file to have this alias forever.

> Don't forget to add excecutable permissions to the script: `chmod +x create-react-component.sh`
