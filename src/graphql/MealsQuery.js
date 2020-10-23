import gql from 'graphql-tag';

export const mealsQuery = () => {
    return gql`
    fragment NutritionFragment on Nutrition {
      values {
          carbs
          fat
          protein
          fiber
          calories
      }
      percentages {
          carbs
          fat
          protein
      }
  }
  
  fragment MealFragment on Meal {
      active
      recipesDetails {
          id
          title
          images {
              hz
              vt
          }
      }
  }
  
  fragment MealPlanFragment on Mealplan {
      id
      title
      userAuthor
      createdAt
      description
      type
      isMembersOnly
      schedule {
        name
        dinner {
            ...MealFragment
        }
        lunch {
           ...MealFragment
        }
        nutrition {
          ...NutritionFragment
        }
        strictness {
            rating
            value
        }
      }
      nutritionAverage {
        ...NutritionFragment
      }
  }
  
  query GetFreeMealPlans {
    freeMealplans {
      ...MealPlanFragment
    }
  }
  `
}