//: [Previous](@previous)

import Foundation

//Given two binary strings a and b, return their sum as a binary string.

//Example 1:

//Input: a = "11", b = "1"
//Output: "100"

//Example 2:
//Input: a = "1010", b = "1011"
//Output: "10101"

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {

        var count = a.count >= b.count ? a.count - 1 : b.count - 1
        var carryBit = 0
        var bits = 0
        let a = Array(a.reversed())
        let b = Array(b.reversed())
        
        var answer = ""
        var numberA: Int
        var numberB: Int
        
        
        for i in 0...count {
            
            if a.indices.contains(i) {
                numberA = a[i].wholeNumberValue ?? 0
            } else {
                numberA = 0
            }
            
            if b.indices.contains(i) {
                numberB = b[i].wholeNumberValue ?? 0
            } else {
                numberB = 0
            }
            
             bits = numberA + numberB + carryBit
            
            switch bits {
            case 1:
                answer.append("1")
                carryBit = 0
                
            case 2:
                answer.append("0")
                carryBit = 1
                
            case 3:
                answer.append("1")
                carryBit = 1
            default:
                answer.append("0")
                carryBit = 0
            }
        }
        if carryBit == 1 {
            answer.append("1")
        }
       
        return String(answer.reversed())
     
    }
}

var sol = Solution()
sol.addBinary("11", "1")



