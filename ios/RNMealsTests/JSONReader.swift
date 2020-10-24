//
//  JSONReader.swift
//  RNMealsTests
//
//  Created by Mohammad Safad on 25/10/2020.
//

import Foundation

class JSONReader {
    func readResponseFrom(fileName: String) -> Data {
        let bundle = Bundle(for: type(of: self))
        if let path = bundle.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: path, options: .alwaysMapped)
                return data
            } catch let error {
                print("parse error: \(error.localizedDescription)")
            }
        }
        return Data()
    }

}
