#! /bin/bash

#Functions Must Be Ahead

read -r -p 'Project Folder >>> : ' reacNativeFolder

cd Desktop
cd "$reacNativeFolder"
mkdir App
cd App
############## Screens
mkdir screens
cd screens 
echo "rnc" > HomeScreen.js
echo "rnc" > DetailScreen.js
cd ..
############## Script
mkdir scripts
cd scripts
echo "const fs = require('fs')
const imageFileNames = () => {
  const array = fs
    .readdirSync('App/assets/images')
    .filter((file) => {
      return file.endsWith('.png')
    })
    .map((file) => {
      return file.replace('@2x.png', '').replace('@3x.png', '').replace('.png','')
    })
return Array.from(new Set(array))
}
const generate = () => {
  let properties = imageFileNames()
    .map((name) => {
      return `${name}: require('./images/${name}.png')`
    })
    .join(',\n  ')
const string = `const images = {
  ${properties}
}
export default images
`
fs.writeFileSync('App/assets/images.js', string, 'utf8')
}
generate()" > imageGenerator.js
cd ..
############## Navigation
mkdir navigation
cd navigation
echo "import {createAppContainer, createSwitchNavigator} from 'react-navigation';

// import screens
import HomeScreen from '../screens/HomeScreen';
import DetailScreen from '../screens/DetailScreen';

const Screens = createSwitchNavigator({
  Welcome,
  VPN,
});

export default createAppContainer(Screens);
" > navigation.js
cd ..
############## Assets
mkdir assets
cd assets
mkdir images
cd ..
############## Components && Redux
mkdir components
mkdir redux
############## Resources
mkdir resources
cd resources
echo 'export default colors = {
  c1: "#0094FC",
  c2: "#393939",
  c3: "#F5F5F5",
};' > colors.js
# cat colors.js do display content of file
cd ..

# VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* # this works but we need diferent solution
open -a Visual\ Studio\ Code $reacNativeFolder
# sed -i '23iabcd' file.conf
echo "$reacNativeFolder \n Created, configured folders and files"
  
 


