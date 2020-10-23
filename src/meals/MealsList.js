import React from 'react';
import Meal from './Meal';
import {URLs} from '../common/URL';
import {mealsQuery} from '../graphql/MealsQuery'
import { ApolloProvider, Query } from 'react-apollo';
import ApolloClient from 'apollo-boost';
import { FlatList, StyleSheet, View, Text } from 'react-native';
const MealsList = () => {
  const client = new ApolloClient({ uri: URLs.mealsURL })
  const QUERY = mealsQuery()

const renderErrorScreen = () => {
  return (
    <View style={styles.loaderContainer}> 
      <Text style={styles.loadingText}>ERROR IN LOADING...</Text>
    </View>
  )
}
const renderLoadingScreen = () => {
  return (
    <View style={styles.loaderContainer}> 
      <Text style={styles.loadingText}>LOADING...</Text>
    </View>
  )
}

const renderMeals = (freeMealsPlans) => {
  return(<View style={styles.container}>
    <FlatList
      data={freeMealsPlans}
      keyExtractor={(item) => item.id}
      renderItem={({item}) => 
           <Meal item={item}/>
      }
    />
  </View>)
}

  return (
    <ApolloProvider client={client}>
        <Query query={QUERY} >
        {({ loading, error, data }) => {
          if (loading) return (renderLoadingScreen())
          if (error) return (renderErrorScreen())
          if (!error && !loading && data && data.freeMealplans)
            return(renderMeals(data.freeMealplans))
        
          }
          }
        </Query>
    </ApolloProvider>

  );
}

const styles = StyleSheet.create({
    container: {
      top: 100,
     flex: 1,
     flexDirection: 'column',
     width:'100%'
    },
    loaderContainer: {

    alignItems: 'center',
    
    justifyContent: 'center'
    },
    loadingText: {
      fontFamily: "Avenir-Heavy",
      fontSize: 30
    }

  });

export default MealsList;
