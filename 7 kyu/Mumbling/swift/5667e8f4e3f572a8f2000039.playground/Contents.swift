import Foundation

// https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/swift

func accum(_ s: String) -> String {
    var res = [String](), arr = s.map({$0})
    for i in (0..<arr.count) {
        if (i + 1) != arr.count {
            res.append(arr[i].uppercased())
            res.append(String(repeating: arr[i].lowercased(), count: i) + "-")
        } else {
            res.append(arr[i].uppercased())
            res.append(String(repeating: arr[i].lowercased(), count: i))
        }
    }
    return res.joined()
}

// Don't forget to remove the number!
func accum2(_ str: String) -> String {
    return str.enumerated().map {
        repeatElement(String($1), count: $0 + 1)
            .joined()
            .capitalized
    }
        .joined(separator: "-")
}

// Don't forget to remove the number!
func accum3(_ s: String) -> String {
    var result = "", count = 1
    s.forEach({
        result += "\($0)".uppercased()
        for _ in 1..<count {
            result += "\($0)".lowercased()
        }
        count += 1
        result += s.count == count - 1  ? "" : "-"
    })
    return result
}

// Don't forget to remove the number!
func accum4(_ str: String) -> String {
    return str.enumerated().map {
        String(repeating: $1, count: $0 + 1).capitalized
    }.joined(separator: "-")
}


// MARK: - Tests

import XCTest

// Executed 4 tests, with 0 failures (0 unexpected) in 0.537 (0.538) seconds
class SolutionTest: XCTestCase {
    private let text1 = "abcd", exp1 = "A-Bb-Ccc-Dddd"
    private let text2 = "RqaEzty", exp2 = "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
    private let text3 = "cwAt", exp3 = "C-Ww-Aaa-Tttt"
    
    func test() {
        XCTAssertEqual(accum(text1), exp1)
        XCTAssertEqual(accum(text2), exp2)
        XCTAssertEqual(accum(text3), exp3)
    }

    func test2() {
        XCTAssertEqual(accum2(text1), exp1)
        XCTAssertEqual(accum2(text2), exp2)
        XCTAssertEqual(accum2(text3), exp3)
    }
    
    func test3() {
        XCTAssertEqual(accum3(text1), exp1)
        XCTAssertEqual(accum3(text2), exp2)
        XCTAssertEqual(accum3(text3), exp3)
    }

    func test4() {
        XCTAssertEqual(accum4(text1), exp1)
        XCTAssertEqual(accum4(text2), exp2)
        XCTAssertEqual(accum4(text3), exp3)
    }
}

SolutionTest.defaultTestSuite.run()
