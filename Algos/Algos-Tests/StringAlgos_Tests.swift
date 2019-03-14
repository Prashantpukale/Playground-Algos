//

// Created by Prashant Pukale
// MIT License
//
// Copyright (c) 2019 Prashantpukale
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.




import XCTest
@testable import Algos

class StringAlgos_Tests: XCTestCase {
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testLCSubString1() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    let string1 = "SOMETEXT"
    let string2 = "SOMEOTHERTEXT"
    let res = StringAlgos.longestCommonSubStrLength(withString: string1, and: string2, result: 0)
    XCTAssert(res == 4)
  }
  
  func testLCSubString2() {
    let string1 = "😅😂😀"
    let string2 = "😅😂"
    let res = StringAlgos.longestCommonSubStrLength(withString: string1, and: string2, result: 0)
    XCTAssert(res == 2)
  }
  
  func testLCSubString3() {
    let string1 = "😅"
    let string2 = "😂"
    let res = StringAlgos.longestCommonSubStrLength(withString: string1, and: string2, result: 0)
    XCTAssert(res == 0)
  }
  
  func testLCSubString4() {
    let string1 = ""
    let string2 = "😂"
    let res = StringAlgos.longestCommonSubStrLength(withString: string1, and: string2, result: 0)
    XCTAssert(res == 0)
  }
  
  
  func testLCSubString6() {
    let string1 = "ABDF37981237197"
    let string2 = "ABDf-=-=-=-"
    let res = StringAlgos.longestCommonSubStrLength(withString: string1, and: string2, result: 0)
    XCTAssert(res == 3)
  }
  
  func testRevString1() {
    let string1 = "😅"
    let res = StringAlgos.reversed(str: string1)
    XCTAssert(res == string1)
  }
  
  func testRevString2() {
    let string1 = "123321"
    let res = StringAlgos.reversed(str: string1)
    XCTAssert(res == string1)
  }
  
  func testRevString3() {
    let string1 = "AB"
    let res = StringAlgos.reversed(str: string1)
    XCTAssert(res == "BA")
  }
  
  func testAnagram1() {
    let string1 = "123"
    let string2 = "321"
    XCTAssert(StringAlgos.isAnagram(string1, string2))
  }
  
  func testAnagram2() {
    let string1 = "321 "
    let string2 = " 321"
    XCTAssert(StringAlgos.isAnagram(string1, string2))
  }
  
  func testAnagram3() {
    let string1 = ""
    let string2 = ""
    XCTAssert(StringAlgos.isAnagram(string1, string2))
  }
  
  func testAnagram4() {
    let string1 = "🎃 👀"
    let string2 = "👀 🎃"
    XCTAssert(StringAlgos.isAnagram(string1, string2))
  }
  
  func testAnagram5() {
    let string1 = "🎃"
    let string2 = "👀 🎃"
    XCTAssert(!StringAlgos.isAnagram(string1, string2))
  }
  
  func testAnagram6() {
    let string1 = "\(#line)"
    let string2 = "\(#line)"
    XCTAssert(!StringAlgos.isAnagram(string1, string2))
  }
  
  func testAnagram7() {
    let string1 = #file
    let string2 = #file
    XCTAssert(StringAlgos.isAnagram(string1, string2))
  }
  
  func testAnagram8() {
    let string1 = #function
    let string2 = #function
    XCTAssert(StringAlgos.isAnagram(string1, string2))
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
}
