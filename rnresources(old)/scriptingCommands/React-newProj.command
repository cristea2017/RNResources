#! /bin/bash

#Functions Must Be Ahead
install_Navigation(){
    npm i react-native-gesture-handler react-native-reanimated react-navigation react-native-screens react-navigation-stack react-navigation-tabs 
    echo "Navigation Instaled"
    
}

install_Redux(){
    npm i react-redux redux redux-persist --save-dev redux-devtools
    echo " Redux Installed"
}

read -r -p 'Project Name >>> : ' reacNativeName
read -r -p 'Do You Need Navigation ? >>> (y/n)): ' reactNavigation
read -r -p 'Do You Need Redux ? >>> (y/n): ' reactRedux

echo '##############Project Will Be Saved To Desktop !!!##############'
cd Desktop
npx react-native init "$reacNativeName"
cd "$reacNativeName"
if [ "$reactNavigation" == 'y' ]; then
    echo "Installing Navigation !"
    install_Navigation;
fi

if [ "$reactRedux" == 'y' ]; then
    echo "Installing Redux!"
    install_Redux;
fi

# Install Pods !important
cd ios 
pod install
cd ..



echo "$reacNativeName Created, configured and cleared"
  
 







# eval cd "${APPLICATION_PATH}"
# ls
# eval cd $path
# ls
# echo $path
# read -r -p 'Commit message: ' desc  # prompt user for commit message
# git add .                           # track all files
# git commit -m "$desc"               # commit with message
# git push                            # push to origin
