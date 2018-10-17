# create-react-component

A simple bash script that generates a React Component Folder in the format I personally like:

`create-react-component MyComponent` will generate:

- MyComponent/
  - [index.js](#index.js)
  - [MyComponent.style.module.scss](#MyComponent.style.module.scss)
  - [MyComponent.js](#MyComponent.js)
  - [MyComponent.spec.js](#MyComponent.spec.js)
  - [README.md](#README.md)

See descriptions of all files [below](#generated-files).

## Usage ✋

```bash
create-react-component.sh ComponentName
```

## Installation 💻

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

## TL;DR 🤦‍

Just paste this in your terminal :

```sh
curl https://raw.githubusercontent.com/ggomez91/create-react-component/master/create-react-component.sh --output ~/bin/create-react-component.sh && echo -e 'export PATH="${PATH}:~/bin"\nalias crc=create-react-component.sh' >> ~/.profile && source ~/.profile && echo "Done you lazy person..."
```

> 💡 **Tip:** You can add this to your `.profile` file to have this alias forever.

> Don't forget to add excecutable permissions to the script: `chmod +x create-react-component.sh`

## Generated Files

### index.js

A simple index that forwards the _default export_ from the Main Javascript File.

```js
export { default } from "./MyComponent";
```

### MyComponent.js

Main Component. Extends from _React.PureComponent_. Adds the named and default export and some placeholders for props.

```js
import React, { PureComponent } from "react";
import PropTypes from "prop-types";

import styles from "./MyComponent.style.module.scss";

/**
 *
 */
export class MyComponent extends PureComponent {
  render() {
    const {} = this.props;
    return <div className={styles.MyComponent} />;
  }
}

MyComponent.propTypes = {};

export default MyComponent;
```

### MyComponent.spec.js

A simple snapshot test with enzyme

```js
import React from "react";
import { shallow } from "enzyme";
import MyComponent from "./MyComponent";

describe("<MyComponent />", () => {
  const wrapper = shallow(<MyComponent />);

  it("Matches snapshot", () => {
    expect(wrapper).toMatchSnapshot();
  });
});
```

### MyComponent.style.module.scss

A nice SASS module with a single empty class. I assume you want a `~styles/variables` import too. (Why wouldn't you?)

```scss
@import "~styles/variables";

// Main label on the top
.MyComponent {
}
```

### README.md

Readme with the [React Styleguidist](https://react-styleguidist.js.org) format. I use it.
example:

    ```js
    <MyComponent />
    ```
