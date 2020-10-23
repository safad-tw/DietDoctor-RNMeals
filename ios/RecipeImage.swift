//
//  RecipeImage.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation

class RecipeImage {
  var hz: String?
  var vz: String?
  
  init(dictionary: [String: AnyObject]?) {
    self.hz = dictionary?["hz"] as? String
    self.vz = dictionary?["vz"] as? String
  }
}
