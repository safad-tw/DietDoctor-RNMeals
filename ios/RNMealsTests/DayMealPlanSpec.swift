//
//  Interactor.spec.swift
//  RNMealsTests
//
//  Created by Mohammad Safad on 25/10/2020.
//

import Quick
import Nimble
@testable import RNMeals

class DayMealPlanSpec: QuickSpec {
  
  override func spec() {
    super.spec()
    
    var dictionary: [String: AnyObject]?
    
    beforeEach {
      let jsonReader = JSONReader()
      let data = jsonReader.readResponseFrom(fileName: "MealPlans")
      do {
        if let results = try JSONSerialization.jsonObject(with: data) as? [String:AnyObject] {
          dictionary = results
        } else {
          print("JSON was not the expected array of dictonary")
        }
      } catch {
        print("Can't process JSON: \(error)")
      }
      
    }
    
    
    describe("Spec for DayMealPlan Model") {
      
      it("should convert dictionary object to sunday day meal object") {
        
        let dayMealPlan = DayMealPlan(dictionary: dictionary)
        expect(dayMealPlan).notTo(beNil())
        expect(dayMealPlan.name).to(equal("sunday0"))
      }
      
      it("should convert dictionary object to sunday day meal should contain name") {
        
        let dayMealPlan = DayMealPlan(dictionary: dictionary)
        expect(dayMealPlan).notTo(beNil())
        expect(dayMealPlan.name).to(equal("sunday0"))
      }
      
      it("should convert dictionary object to sunday day meal should contain dinner") {
        
        let dayMealPlan = DayMealPlan(dictionary: dictionary)
        expect(dayMealPlan).notTo(beNil())
        expect(dayMealPlan.dinner).notTo(beNil())
      }
      
      it("should convert dictionary object to sunday day meal should contain lunch") {
        
        let dayMealPlan = DayMealPlan(dictionary: dictionary)
        expect(dayMealPlan).notTo(beNil())
        expect(dayMealPlan.lunch).notTo(beNil())
      }
      
      it("should convert dictionary object to sunday day meal should contain dinner recipiedetails") {
        
        let dayMealPlan = DayMealPlan(dictionary: dictionary)
        expect(dayMealPlan).notTo(beNil())
        expect(dayMealPlan.dinner?.recipesDetails).notTo(beNil())
      }
      
      it("should convert dictionary object to sunday day meal should contain dinner recipiedetails image") {
        
        let dayMealPlan = DayMealPlan(dictionary: dictionary)
        expect(dayMealPlan).notTo(beNil())
        expect(dayMealPlan.dinner?.recipesDetails[0].getImageUrl()).notTo(beNil())
      }
      
      it("should convert dictionary object to sunday day meal should contain lunch recipiedetails") {
        
        let dayMealPlan = DayMealPlan(dictionary: dictionary)
        expect(dayMealPlan).notTo(beNil())
        expect(dayMealPlan.lunch?.recipesDetails).notTo(beNil())
      }
      
      
      
      
    }
  }
  
}


