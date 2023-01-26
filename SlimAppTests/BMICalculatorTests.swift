//
//  BMICalculatorTests.swift
//  SlimAppTests
//
//  Created by Antonio Palomba on 25/01/23.
//

import XCTest
@testable import SlimApp

final class BMICalculatorTests: XCTestCase {
    let testHeight: Double = 105.4
    let testWeight: Double = 16.9

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBMICalculatorWithDefaultHeightAndWeightValue() throws {
        let result = BMICalculator.calculate(fromHeight: testHeight, weight: testWeight)
        XCTAssertEqual(result, 15.21)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
