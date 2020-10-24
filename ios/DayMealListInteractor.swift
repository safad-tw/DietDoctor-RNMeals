//
//  MealListInteractor.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation

protocol DayMealListInteractorProtocol {
  func getDayMealPlan()
}

class DayMealListInteractor {
  
  var dayMealPlan:DayMealPlan
  var presenter: DayMealListPresenterProtocol?
  
  init(dayMealPlan: DayMealPlan, presenter: DayMealListPresenterProtocol) {
    self.dayMealPlan = dayMealPlan
    self.presenter = presenter
  }
}

extension DayMealListInteractor: DayMealListInteractorProtocol {
  
  func getDayMealPlan() {
    self.presenter?.showDayMealPlan(dayMealPlan)
  }
  
}
