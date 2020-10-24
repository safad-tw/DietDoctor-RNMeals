//
//  NavigationSpec.swift
//  RNMealsTests
//
//  Created by Mohammad Safad on 25/10/2020.
//

import Quick
import Nimble
@testable import RNMeals

class NavigationSpec: QuickSpec {
  
  override func spec() {
    super.spec()

    describe("Spec for Navigation") {
      
      it("should return day meal plan list view controller when we pass right props") {
        
        let navigation = Navigation()
        let data = ["screenName":"DayMealPlan", "data":["schedule":"schedule"]] as [String : Any]
        
        let vc = navigation.navigateTo(data as NSDictionary)
        expect(vc).notTo(beNil())
        
        
      }
      
    }
  }
  
}


