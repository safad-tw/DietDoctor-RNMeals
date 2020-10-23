export const MealImageConstructor = (dinner) => {
    if(dinner && dinner.recipesDetails.length > 0 &&  dinner.recipesDetails[0].images && dinner.recipesDetails[0].images.hz) {
        return 'https://i.dietdoctor.com/'+  dinner.recipesDetails[0].images.hz  + '?auto=compress%2Cformat&w=400&h=200&fit=crop%20200w'
    }    
}