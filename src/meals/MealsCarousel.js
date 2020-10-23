import * as React from 'react';
import {navigateTo} from '../../Navigation'
import {
  Text, 
  View,
  TouchableOpacity, StyleSheet,Dimensions } from 'react-native';
  import ProgressiveImage from  '../common/ProgressiveImage'
import {MealImageConstructor} from  '../common/ImageHelper'
import Carousel from 'react-native-snap-carousel';


export default class MyCarousel extends React.Component {
    constructor(props){
        super(props);
        this.state = {
          activeIndex:0,
          carouselItems: this.props.schedule
      }
    }

    _renderItem({item,index}){
        return (
        <TouchableOpacity onPress={ () =>  navigateTo({'screenName': 'DayMealPlan','data':item})}> 
          <View style={styles.carouselContainer}>
            <ProgressiveImage
          source={{ uri: MealImageConstructor(item.dinner)}}
          style={styles.image}
          resizeMode="cover"
          />     
           <View style={styles.overlay} />
          {item.dinner && <Text style={styles.title}>{item.name}</Text> }
          </View>
          </TouchableOpacity>
        )
    }

    render() {
        return ( 
            <View style={styles.carouselView}>
                <Carousel
                  layout={"stack"}
                  ref={ref => this.carousel = ref}
                  data={this.state.carouselItems}
                  sliderWidth={ Math.round(Dimensions.get('window').width - 20)}
                  itemWidth={ Math.round(Dimensions.get('window').width - 20)}
                  renderItem={this._renderItem}
                  onSnapToItem = { index => this.setState({activeIndex:index}) } />
            </View>
        );
    }
}

const styles = StyleSheet.create({
    carouselView: {
        flex: 1, 
        flexDirection:'row', 
        justifyContent: 'center'
    },
    carouselContainer: {
        top: 30, 
        backgroundColor:'#00BCD4',
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
       fontFamily: "Avenir-Heavy",
       fontSize: 20,
       height: 44,
       position:'absolute',
       bottom: 20,
       left: 5,
       color:'white'
     }
  })