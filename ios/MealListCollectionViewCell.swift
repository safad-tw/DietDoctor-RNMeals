//
//  MealListCollectionViewCell.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import UIKit
import Kingfisher

class MealListCollectionViewCell: UICollectionViewCell {
    
  @IBOutlet weak var mealImageView: UIImageView!
  @IBOutlet weak var mealTypeLabel: UILabel!
  
  
  func setData(planner: MealPlannerDetails?) {
    
    self.mealTypeLabel.text = ((planner as? Dinner) != nil) ? "Dinner": "Lunch"
    if planner?.recipesDetails.count ?? 0 > 0, let url = URL(string: planner?.recipesDetails[0].getImageUrl() ?? "") {
      self.mealImageView.kf.setImage(with: url)
    }
    
  }
  
  
  
}
