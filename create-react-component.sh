#!/bin/bash
# Author:       Gustavo Gómez
# Email:        ggomez91@gmail.com
# Date:         10/17/2019
# Usage:        create-react-component.sh component-name
# Description:
# A simple bash script that generates a React Component Folder in 
# the format I personally like

set -e

NAME=$1
mkdir $NAME
cd $NAME

# Generate `index.js`
echo "export { default } from \"./"$NAME"\";" > index.js

# Generate component
echo "import React, { PureComponent } from \"react\";
import PropTypes from \"prop-types\";

import styles from \"./$NAME.style.module.scss\";

/**
 * 
 */
export class $NAME extends PureComponent {
  render() {
    const { } = this.props;
    return (
      <div className={styles.$NAME}>
      </div>
    );
  }
}

$NAME.propTypes = {
};

export default $NAME;" > $NAME.js

# Generate style

echo "@import \"~styles/variables\";

// Main label on the top
.$NAME {
}" >$NAME.style.module.scss

# Generate tests

echo "import React from \"react\";
import { shallow } from \"enzyme\";
import $NAME from \"./$NAME\";

describe(\"<$NAME />\", () => {
  const wrapper = shallow(<$NAME />);

  it(\"Matches snapshot\", () => {
    expect(wrapper).toMatchSnapshot();
  });
});" >$NAME.spec.js

# Generate docs

echo "example:

\`\`\`js
<$NAME />
\`\`\`
" > README.md 

echo "Component <$NAME /> generated successfully!"
