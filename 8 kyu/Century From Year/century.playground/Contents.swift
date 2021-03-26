import UIKit

func century(_ year: Int) -> Int {
    return Int((Double(year) / 100).rounded(.up))
    // return (year + 99) / 100
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", basicTests),
    ]
    
    func basicTests() {
        XCTAssertEqual(century(1705), 18)
        XCTAssertEqual(century(1900), 19)
        XCTAssertEqual(century(1601), 17)
        XCTAssertEqual(century(2000), 20)
        XCTAssertEqual(century(89), 1)
    }
}

SolutionTest.defaultTestSuite.run()