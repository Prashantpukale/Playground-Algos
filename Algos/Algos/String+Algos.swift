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
import Foundation

struct StringAlgos {
  static func longestCommonSubStrLength(withString string1: String, and string2: String, result: Int) -> Int {
    if(string1.isEmpty || string2.isEmpty) { return result }
    if(string1.last == string2.last) {
      return longestCommonSubStrLength(withString:String(string1.dropLast()), and:String(string2.dropLast()), result: result+1)
    }
    
    let max1 = max(longestCommonSubStrLength(withString: String(string1.dropLast()), and: string2, result: 0), longestCommonSubStrLength(withString: string1, and: String(string2.dropLast()), result: 0))
    return max(result, max1)
  }
  static func reversed(str: String) -> String {
    if str.startIndex == str.endIndex {
      return str
    }
    return reversed(str: String(str.dropFirst())) + String(str[str.startIndex])
  }
}
