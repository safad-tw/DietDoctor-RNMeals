//
//  MealListPresenter.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation

protocol DayMealListPresenterProtocol {
  func showDayMealPlan(_ dayMealPlan: DayMealPlan?)
}

class DayMealListPresenter {
  
  var view:DayMealListViewControllerProtocol?
  
  init(view: DayMealListViewControllerProtocol) {
    self.view = view
  }
  
}

extension DayMealListPresenter: DayMealListPresenterProtocol {
  
  func showDayMealPlan(_ dayMealPlan: DayMealPlan?)  {
    self.view?.showDayMealPlan(dayMealPlan)
  }
  
}
