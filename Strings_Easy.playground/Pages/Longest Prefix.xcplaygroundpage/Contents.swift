//: [Previous](@previous)

import Foundation

//Write a function to find the longest common prefix string amongst an array of strings.
//If there is no common prefix, return an empty string ""

//Example 1:
//Input: strs = ["flower","flow","flight"]
//Output: "fl"

//Example 2:
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else {
            return ""
        }
        var commonPrefix = ""
        
        let firstWord = strs[0]
        
        for (i, character) in firstWord.enumerated() {
            for j in 1..<strs.count {
                let currentWord = strs[j]
                
                if i >= currentWord.count || currentWord[currentWord.index(currentWord.startIndex, offsetBy: i)] != character {
                    
                    return commonPrefix
                }
            }
            
            commonPrefix.append(character)
        }
        return commonPrefix
    }
}

let sol = Solution()
let test = ["Brandon", "Brian", "Brain", "Brad", "Bread"]
print (sol.longestCommonPrefix(test))
