import React, { Component } from 'react';
import {NativeModules} from 'react-native';
import { TouchableOpacity, View, Image, Text,StyleSheet } from 'react-native';
import ProgressiveImage from  '../common/ProgressiveImage'

class Meal extends Component {
    render() {
      const {item} = this.props

      const handleClick  = ()  => {
        console.log("*** handleClick called");
        console.log("naviga",NativeModules.Navigation)
        NativeModules.Navigation.navigateTo('NativeDemo')
      }
  
      return (
        <TouchableOpacity onPress={handleClick}> 
        <View style={styles.mealContainer} onClic>
          <ProgressiveImage
          source={{ uri: item.url }}
          style={styles.image}
          resizeMode="cover"
          />
          <View style={styles.overlay} />
          <Text style={styles.title}>{item.name}</Text>
        </View>
        </TouchableOpacity>
      )
    }
  }

const styles = StyleSheet.create({
    mealContainer: {
        height: 300,
        backgroundColor: 'white',
        margin:5
     },
     image: {
       width:'100%',
       height: '100%'
     },
     overlay: {
       flex: 1,
       position: 'absolute',
       left: 0,
       top: 0,
       width:'100%',
       height: '100%',
       opacity: 0.4,
       backgroundColor: 'black'
     },
     title: {
       padding: 10,
       fontFamily: "SFUIDisplay-Bold",
       fontSize: 18,
       height: 44,
       position:'absolute',
       bottom: 20,
       left: 5,
       color:'white'
     }
  })

  export default Meal;