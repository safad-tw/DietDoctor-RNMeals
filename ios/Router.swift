//
//  Router.swift
//  RNMeals
//
//  Created by Mohammad Safad on 23/10/2020.
//

import UIKit

class MealListRouter {
    
    static func create() -> UIViewController? {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MealListViewController") as? MealListViewController
        return viewController
    }
}
