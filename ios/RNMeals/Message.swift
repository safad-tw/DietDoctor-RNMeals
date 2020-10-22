//
//  Message.swift
//  RNMeals
//
//  Created by Mohammad Safad on 22/10/2020.
//

import Foundation

@objc(Message)

class Message: NSObject {
  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    return [
      "number": 123.9,
      "string": "foo",
      "boolean": true,
      "array": [1, 22.2, "33"],
      "object": ["a": 1, "b": 2]
    ]
  }
  
  @objc
  func printHelloWorld() {
    print("Hello World")
  }
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
