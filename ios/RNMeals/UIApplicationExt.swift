//
//  UIApplicationExt.swift
//  RNMeals
//
//  Created by Mohammad Safad on 22/10/2020.
//

import UIKit

extension UIApplication {
class func topMostViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
if let navigationController = controller as? UINavigationController {
            return topMostViewController(controller: navigationController.visibleViewController)
        }
if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topMostViewController(controller: selected)
            }
        }
if let presented = controller?.presentedViewController {
            return topMostViewController(controller: presented)
        }
return controller
    }
}
