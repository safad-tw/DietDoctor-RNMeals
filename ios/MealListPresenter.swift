//
//  MealListPresenter.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation

protocol MealListPresenterProtocol {
  func showDayMealPlan(_ dayMealPlan: DayMealPlan?)
}

class MealListPresenter {
  
  var view:MealListViewControllerProtocol?
  
  init(view: MealListViewControllerProtocol) {
    self.view = view
  }
  
}

extension MealListPresenter: MealListPresenterProtocol {
  
  func showDayMealPlan(_ dayMealPlan: DayMealPlan?)  {
    self.view?.showDayMealPlan(dayMealPlan)
  }
  
}
