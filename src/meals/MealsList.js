import React from 'react';
import Meal from './Meal';
import {NativeModules} from 'react-native';
import {navigateTo} from '../../Navigation'
import { FlatList, StyleSheet, View } from 'react-native';
const MealsList = () => {
    const mealsList = [{id:"1", name: 'Philly CheeseSteak Cassarole',url:'https://i.dietdoctor.com/wp-content/uploads/2017/11/DD-546-ketofriedchickenwithbroccoli-2.jpg?auto=compress%2Cformat&w=150&h=225&fit=crop'},
    {id:"2",name: 'Philly CheeseSteak 2',url:'https://i.dietdoctor.com/wp-content/uploads/2019/01/Rasberry-brownies_Horizontal.jpg?auto=compress%2Cformat&w=400&h=200&fit=crop%20200w'},
    {id:"3",name: 'Philly CheeseSteak 3',url:'https://i.dietdoctor.com/wp-content/uploads/2017/11/DD-546-ketofriedchickenwithbroccoli-2.jpg?auto=compress%2Cformat&w=150&h=225&fit=crop'},
    {id:"4",name: 'Philly CheeseSteak 4',url:'https://i.dietdoctor.com/wp-content/uploads/2017/11/DD-546-ketofriedchickenwithbroccoli-2.jpg?auto=compress%2Cformat&w=150&h=225&fit=crop'}]


  return (
    <View style={styles.container}>
      <FlatList
        data={mealsList}
        keyExtractor={(item) => item.id}
        renderItem={({item}) => 
             <Meal item={item}/>
        }
      />
    </View>
  );
}

const styles = StyleSheet.create({
    container: {
     flex: 1,
     flexDirection: 'column',
     width:'100%',
     paddingTop: 22
    }
  });

export default MealsList;
