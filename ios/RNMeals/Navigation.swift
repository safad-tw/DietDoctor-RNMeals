//
//  Navigation.swift
//  RNMeals
//
//  Created by Mohammad Safad on 22/10/2020.
//

import UIKit


@objc(Navigation)
class Navigation: NSObject {
  
  @objc
  func navigateTo(_ destination: NSString) -> Void {
    let modelVC: UIViewController;
    switch destination {
    case "NativeDemo":
      modelVC = MealListRouter.create()!
    default:
      return;
    }
    DispatchQueue.main.async {
      let topController = UIApplication.topMostViewController()
      topController?.present(modelVC, animated: true, completion: nil)
    }
  }
  
  @objc
     func goBack() -> Void {
       DispatchQueue.main.async {
         let topController = UIApplication.topMostViewController()
         topController?.dismiss(animated: true, completion: nil)
       }
     }
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
