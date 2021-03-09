//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Jeff Umandap on 3/9/21.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testWGetHours() {
        XCTAssert(HourlyWage.getHours(forWage: 25, forPrice: 100) == 4)
        XCTAssert(HourlyWage.getHours(forWage: 15.50, forPrice: 250.53) == 17)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
