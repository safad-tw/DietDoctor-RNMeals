//
//  DayMealPlan.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation


protocol MealPlannerDetails {
  var active:Bool? { get set }
  var recipesDetails:[RecipesDetails] { get set }
  var typeName: String? { get set }
}

class DayMealPlan {
  var name: String?
  var dinner:Dinner?
  var lunch: Lunch?
  
  init(dictionary: [String: AnyObject]?) {
    self.name = dictionary?["name"] as? String
    self.dinner = Dinner(dictionary: dictionary?["dinner"] as? [String : AnyObject])
    self.lunch = Lunch(dictionary: dictionary?["lunch"] as? [String : AnyObject])
  }
}






