import Foundation

// Get the mean of an array
// https://www.codewars.com/kata/563e320cee5dddcf77000158/train/swift

func getAverage(_ marks: [Int]) -> Int {
    return marks.reduce(0, +) / marks.count // OK
}

import XCTest

final class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(getAverage([2,2,2,2]),2);
        XCTAssertEqual(getAverage([1,2,3,4,5,]),3);
        XCTAssertEqual(getAverage([1,1,1,1,1,1,1,2]),1);
    }
}

SolutionTest.defaultTestSuite.run()
