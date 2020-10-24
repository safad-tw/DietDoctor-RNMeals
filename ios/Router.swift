//
//  Router.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import UIKit

class MealListRouter {
  
  static func create(dayMealPlan: DayMealPlan) -> DayMealListViewControllerProtocol? {
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    guard let viewController = storyboard.instantiateViewController(withIdentifier: "MealListViewController") as? DayMealListViewControllerProtocol else{
      return nil
    }
    let presenter = DayMealListPresenter(view: viewController )
    let interactor = DayMealListInteractor(dayMealPlan: dayMealPlan, presenter: presenter)
    viewController.interactor = interactor
    return viewController
  }
}
