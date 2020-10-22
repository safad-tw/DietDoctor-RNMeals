
import React from 'react';
// import {AppRegistry} from 'react-native';
import MealsList from './src/meals/MealsList';
import { StyleSheet, View, AppRegistry } from 'react-native';

export default function App() {
  return (
    <View style={styles.container}>
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
});

AppRegistry.registerComponent('App', () => App);