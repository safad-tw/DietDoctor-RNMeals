//
//  Dinner.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation

class Dinner: MealPlannerDetails {
  var active: Bool?
  var recipesDetails: [RecipesDetails]
  var typeName: String?
  
  init(dictionary: [String: AnyObject]?) {
    self.active = dictionary?["active"] as? Bool
    self.typeName = dictionary?["__typename"] as? String
    self.recipesDetails = [RecipesDetails]()
    if let recipieArray = dictionary?["recipesDetails"] as? Array<Any>  {
      for item in recipieArray {
        self.recipesDetails.append(RecipesDetails(dictionary: item as? [String : AnyObject]))
      }
    }
  }
}

