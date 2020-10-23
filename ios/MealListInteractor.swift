//
//  MealListInteractor.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import Foundation

protocol MealListInteractorProtocol {
  func getDayMealPlan()
}

class MealListInteractor {
  
  var dayMealPlan:DayMealPlan
  var presenter: MealListPresenterProtocol?
  
  init(dayMealPlan: DayMealPlan, presenter: MealListPresenterProtocol) {
    self.dayMealPlan = dayMealPlan
    self.presenter = presenter
  }
}

extension MealListInteractor: MealListInteractorProtocol {
  
  func getDayMealPlan() {
    self.presenter?.showDayMealPlan(dayMealPlan)
  }
  
}
