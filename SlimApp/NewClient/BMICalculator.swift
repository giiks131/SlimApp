//
//  BMICalculator.swift
//  SlimApp
//
//  Created by Antonio Palomba on 24/01/23.
//

import Foundation

enum BMICalculator {
    static func calculate(fromHeight height: Double, weight: Double) -> Double {
        let powHeight = pow(height, 2)
        let result = (weight / powHeight) * 10000
        let roundedResult = (result * 100).rounded() / 100
        return roundedResult
    }
}
