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

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
