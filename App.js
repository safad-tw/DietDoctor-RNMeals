
import React from 'react';
// import {AppRegistry} from 'react-native';
import MealsList from './src/meals/MealsList';
import { StyleSheet, View, AppRegistry, Text} from 'react-native';

export default function App() {
  return (
    <View style={styles.container}>
      <View style={styles.navBar}>
         <Text style={styles.title}>Weekly Meal Plans</Text>
      </View>
      <MealsList />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  navBar :{
    top: 0,
    position:'absolute',
    height: 100,
    width:'100%',
    alignItems: 'center',
    backgroundColor:'gray'
  },
  title: {
    padding: 10,
    fontFamily: "Avenir-Heavy",
    fontSize: 18,
    height: 44,
    position:'absolute',
    top: 50,
    // left: 5,
    color:'white'
  }
});

AppRegistry.registerComponent('App', () => App);