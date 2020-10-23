//
//  RecipesDetails.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation

class RecipesDetails {
  var id:String?
  var title:String?
  var recipeImage: RecipeImage
  
  init(dictionary: [String: AnyObject]?) {
    self.id = dictionary?["id"] as? String
    self.title = dictionary?["title"] as? String
    self.recipeImage = RecipeImage(dictionary: dictionary?["images"] as? [String : AnyObject])
  }
  
  func getImageUrl() -> String {
    return URLs.baseURL + (recipeImage.hz ?? "") + URLs.cropURLPath
  }
}
