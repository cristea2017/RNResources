# RNResources

- [RNResources](#rnresources)
- [ResourceMap](#resourcemap)
- [Getting Started](#getting-started)
  - [1. Drag App Folder To Your Project](#1-drag-app-folder-to-your-project)
  - [2. Scripting Commands](#2-scripting-commands)
  - [3. npm/npx](#3-npmnpx)

# ResourceMap

- App 
  - assets
  - components
  - navigation
  - redux
  - resources
  - screens
  - scripts
  - utils
- ScriptingCommands
- npm/npx.txt


# Getting Started 

## 1. Drag App Folder To Your Project


 * Add this 2 lines in pachage.json
```
"images": "node App/scripts/images.js",
"fonts": "node App/scripts/fonts.js"
```
 * Do not forget to run image and fonts scripts located in :
  
``` 
./App/scripts 
...
 "scripts": {
     ...
 }
```
* Replace content of App.js or App.tsx 
``` 
import React from 'react';
import Navigator from './App/navigation/Navigation';

class App extends React.Component {
  render() {
    return <Navigator />;
  }
}
export default App;
```

## 2. Scripting Commands

```
- gitPush | drag folder for commit , add commit message and press enter.
  
- React-CreateFolders | create App container for react project.

  React-NewProj | create new RN with choose option of redux && navigator.
``` 

## 3. npm/npx
Open text file and copy npm command
```
npx react-native ...
``` 
