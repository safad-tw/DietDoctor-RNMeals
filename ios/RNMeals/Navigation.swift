//
//  Navigation.swift
//  RNMeals
//
//  Created by Mohammad Safad on 22/10/2020.
//

import UIKit

enum ScreenName: String {
  case DayMealPlan
}


@objc(Navigation)
class Navigation: NSObject {
  
  @objc
  func navigateTo(_ props: NSDictionary) -> Void {
    guard let screen = props["screenName"] as? String ,
          let screenName = ScreenName(rawValue:screen)  else {
      return
    }
    switch screenName {
    
    case .DayMealPlan:
      let mealPlan = DayMealPlan(dictionary: props["data"] as? [String : AnyObject])
      self.showMealPlanScreen(dayMealPlan:mealPlan)
    }
    
  }
  
  
  private func showMealPlanScreen(dayMealPlan: DayMealPlan) {
    guard let mealListVC = MealListRouter.create(dayMealPlan: dayMealPlan) else {
      return;
    }
    DispatchQueue.main.async {
      let topController = UIApplication.topMostViewController()
      if let vc = mealListVC as? UIViewController {
        vc.modalPresentationStyle = .fullScreen
        topController?.present(vc, animated: true, completion: nil)
      }
    }
    
  }
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
