import * as React from 'react';
import {navigateTo} from '../../Navigation'
import {
  Text, 
  View,
  TouchableOpacity, StyleSheet,Dimensions } from 'react-native';
  import ProgressiveImage from  '../common/ProgressiveImage'
import {MealImageConstructor} from  '../common/ImageHelper'
import Carousel from 'react-native-snap-carousel';

export interface Props {
  schedule:any
}

interface State {
  activeIndex: number,
  carouselItems:any,
  carousel:any
}

class DayMealCarousel extends  React.Component<Props, State> {
   
  constructor(props: Props){
        super(props);
        this.state = {
          carousel:null,
          activeIndex:0,
          carouselItems: this.props.schedule
      }
    }

    _renderItem(data:any){
        return (
        <TouchableOpacity onPress={ () =>  navigateTo({'screenName': 'DayMealPlan','data':data.item})}> 
          <View style={styles.carouselContainer}  testID={data.item.name}>
            <ProgressiveImage
          source={{ uri: MealImageConstructor(data.item.dinner)}}
          style={styles.image}
          resizeMode="cover"
          />     
           <View style={styles.overlay} />
          {data.item.dinner && <Text style={styles.title}>{data.item.name}</Text> }
          </View>
          </TouchableOpacity>
        )
    }

    render() {
        return ( 
            <View style={styles.carouselView}>
                <Carousel
                  layout={"stack"}
                  ref={ref => console.log(ref)}
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

  export default DayMealCarousel;