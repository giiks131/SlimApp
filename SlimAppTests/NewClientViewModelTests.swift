//
//  SlimAppTests.swift
//  SlimAppTests
//
//  Created by Antonio Palomba on 25/01/23.
//

import XCTest
@testable import SlimApp

final class NewClientViewModelTests: XCTestCase {
    var viewModel: NewClientViewModel!
    
    override func setUpWithError() throws {
        viewModel = NewClientViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }

    func testBMIValueUpdatesOnChangeOfWeightHeight() throws {
        viewModel.height = "180.00"
        viewModel.weight = "67"
        XCTAssert(viewModel.bmiValue != 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
