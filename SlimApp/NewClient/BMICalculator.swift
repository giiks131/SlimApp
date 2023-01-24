//
//  BMICalculator.swift
//  SlimApp
//
//  Created by Antonio Palomba on 24/01/23.
//

import Foundation

struct BMICalculator {
    let BMIweight: Double
    let BMIheight: Double
    var BMIValue: Double {
        let powHeight = pow(BMIheight, 2)
        let result = BMIweight / powHeight
        return result
    }
}
