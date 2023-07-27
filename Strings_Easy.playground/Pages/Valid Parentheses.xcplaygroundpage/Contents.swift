//: [Previous](@previous)

import Foundation


//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

//An input string is valid if:

//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.

//Example 1:
//Input: s = "()"
//Output: true

//Example 2:
//Input: s = "()[]{}"
//Output: true

//Example 3:
//Input: s = "(]"
//Output: false


class Solution {
    
    func isValid(_ s: String) -> Bool {
        
        var stack = Stack<Character>()
        
        for character in s {
            switch character  {
            case "(":
                stack.push(")")
            case "[":
                stack.push("]")
                
            case "{":
                stack.push("}")
                
            default:
                if character != stack.pop() {
                    return false
                }
            }
            
        }
        return stack.isEmpty
    }
}
    struct Stack<T> {
        private var array: [T] = []
        
        mutating func pop() -> T? {
            if array.isEmpty {
                return nil
            }
            return array.removeLast()
        }
        
        mutating func push(_ value: T){
            array.append(value)
            
        }
        
        var isEmpty: Bool {
            array.isEmpty
        }
    }

    

let sol = Solution()
sol.isValid("{}")
