//
//  Router.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import UIKit

class MealListRouter {
  
  static func create(dayMealPlan: DayMealPlan) -> MealListViewControllerProtocol? {
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    guard let viewController = storyboard.instantiateViewController(withIdentifier: "MealListViewController") as? MealListViewControllerProtocol else{
      return nil
    }
    let presenter = MealListPresenter(view: viewController )
    let interactor = MealListInteractor(dayMealPlan: dayMealPlan, presenter: presenter)
    viewController.interactor = interactor
    return viewController
  }
}
