import React, { Component } from 'react';
import {NativeModules} from 'react-native';
import { TouchableOpacity, View, Image, Text,StyleSheet } from 'react-native';
import MealsCarousel from './MealsCarousel'
import ProgressiveImage from  '../common/ProgressiveImage'

class Meal extends Component {
    render() {
      const {item} = this.props

      const handleClick  = ()  => {
        NativeModules.Navigation.navigateTo('NativeDemo')
      }

      const compressImageUrl = (compressImageUrl) =>  {
        return 'https://i.dietdoctor.com/wp-content/uploads/2019/01/Rasberry-brownies_Horizontal.jpg?auto=compress%2Cformat&w=400&h=200&fit=crop%20200w'
      }
  
      return (
        // <TouchableOpacity onPress={handleClick}> 
        
        <View style={styles.mealContainer}>
        <MealsCarousel schedule={item.schedule}/>
        <Text style={styles.title}>{item.title}</Text>
        </View>
        // </TouchableOpacity>
      )
    }
  }

const styles = StyleSheet.create({
    mealContainer: {
        height: 350,
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
       top: 10,
       width:'100%',
       height: '100%',
       opacity: 0.4,
       backgroundColor: 'black'
     },
     title: {
       paddingTop: 10,
       fontFamily: "SFUIDisplay-Bold",
       fontSize: 18,
       height: 44,
       position:'absolute',
       top: 0,
       left: 5,
       color:'green'
     }
  })

  export default Meal;