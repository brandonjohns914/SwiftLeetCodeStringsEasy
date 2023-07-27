//: [Previous](@previous)

import Foundation
/*
 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 
 
 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
 
 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 
 Example 1:
 Input: s = "III"
 Output: 3
 Explanation: III = 3.
 
 Example 2:

 Input: s = "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.
 
 Example 3:

 Input: s = "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

 
 */


class Solution {
    let valueDictionary: [String : Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    func romanToInt(_ s: String) -> Int {
        
        var lengthNumeral = s.count
        
        var conversionValue = 0
        
        for (index, character) in s.enumerated(){
            if let currentSymbol = valueDictionary[String(character)] {
                
                if index < lengthNumeral - 1 {
                    
                    let nextIndex = s.index(s.startIndex, offsetBy: index + 1)
                    
                    let nextCharacter = s[nextIndex]
                    
                    if let nextValue = valueDictionary[String(nextCharacter)]{
                        
                        if currentSymbol >= nextValue {
                            
                            conversionValue += currentSymbol
                        }
                        
                        else {
                            conversionValue -= currentSymbol
                        }
                    }
                }
                
                else {
                    conversionValue += currentSymbol
                }
                
            }
        }
        
        return conversionValue
        
    }
}

let romanInt = Solution()
print(romanInt.romanToInt("IV"))

