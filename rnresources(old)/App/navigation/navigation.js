import {createAppContainer, createSwitchNavigator} from 'react-navigation';

// import screens
import HomeScreen from '../screens/HomeScreen';
import DetailScreen from '../screens/DetailScreen';

const Screens = createSwitchNavigator({
  Welcome,
  VPN,
});

export default createAppContainer(Screens);

