//: [Previous](@previous)

import Foundation
//Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

//Example 1:
//Input: haystack = "sadbutsad", needle = "sad"
//Output: 0
//Explanation: "sad" occurs at index 0 and 6.
//The first occurrence is at index 0, so we return 0.

//Example 2:
//Input: haystack = "leetcode", needle = "leeto"
//Output: -1
//Explanation: "leeto" did not occur in "leetcode", so we return -1.


class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var haystackLength = haystack.count
        var needleLength = needle.count
        
        var haystackArray = Array(haystack)
        var needleArray = Array(needle)
        
        if needleLength > haystackLength {
            return -1
        }
        
        if needleArray.isEmpty{
            return 0
        }
        if haystackArray.isEmpty {
            return 0
        }
        
        for i in 0..<haystackLength + 1 - needleLength {
            for j in 0..<needleLength {
                if haystackArray[i + j] != needleArray[j] {
                    break
                }
                
                if j == needleLength - 1 {
                    return i
                }
            }
        }
       
        return -1
    }
}

var sol = Solution()

sol.strStr("Hello Brandon", "Bran")
