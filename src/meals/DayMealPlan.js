import React, { Component } from 'react';
import {View, Text,StyleSheet } from 'react-native';
import DayMealCarousel from './DayMealCarousel'

class DayMealPlan extends Component {
    render() {
      const {item} = this.props
      return (
        <View style={styles.mealContainer}>
          <DayMealCarousel schedule={item.schedule}/>
          <Text style={styles.title}>{item.title}</Text>
        </View>
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
       fontFamily: "Avenir-Heavy",
       fontSize: 18,
       height: 44,
       position:'absolute',
       top: 0,
       left: 5,
       color:'green'
     }
  })

  export default DayMealPlan;