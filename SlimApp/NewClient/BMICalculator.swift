//
//  BMICalculator.swift
//  SlimApp
//
//  Created by Antonio Palomba on 24/01/23.
//

import Foundation

enum BMICalculator {
    static func calculate(fromHeight height: String, weight: String) -> Double {
        let powHeight = pow(Double(height) ?? 0 , 2)
        let result = (Double(weight) ?? 0 / powHeight) * 10000
        let roundedResult = (result * 100).rounded() / 100
        return roundedResult
    }
}
