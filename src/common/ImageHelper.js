import {URLs} from './URL'
export const MealImageConstructor = (dinner) => {
    if(dinner && dinner.recipesDetails.length > 0 &&  dinner.recipesDetails[0].images && dinner.recipesDetails[0].images.hz) {
        return URLs.imageBaseURL +  dinner.recipesDetails[0].images.hz  + URLs.cropImageURL
    }    
}