//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension String {
    func dropFirst() -> String? {
        if self.startIndex != self.endIndex {
            return self.substringFromIndex(self.startIndex.successor())
        }
        return nil
    }
}

func strRev(str: String) -> String {
    
    if str.startIndex == str.endIndex.predecessor() {
        return str
    }
    return strRev(str.dropFirst()!) + String(str[str.startIndex])
}

strRev("esruceR olleH esreveR olleH")