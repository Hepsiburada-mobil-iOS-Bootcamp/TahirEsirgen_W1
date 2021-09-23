//
//  AlgorithmManager.swift
//  iOS_Week_1
//
//  Created by Erkut Bas on 19.09.2021.
//

import Foundation

class AlgorithmManager: AlgorithmProtocol {
    
    // MARK: - Two Sum
    /*
     Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
     You may assume that each input would have exactly one solution, and you may not use the same element twice.
     You can return the answer in any order.
     
     Input: nums = [2,7,11,15], target = 9
     Output: [0,1]
     Output: Because nums[0] + nums[1] == 9, we return [0, 1].
     */
    func twoSumTest() -> Void {
        let nums = [2,7,11,15]
        let target = 9
        let result = twoSum(nums, target)
        print("result : \(result)")
    }
    
    private func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
                for index in 0..<nums.count {
                    let value = nums[index]
                    let remainder = target - value
                    if let anotherIndex = dict[remainder] {
                        return [anotherIndex, index]
                    }
                    dict[value] = index
                }
        return [-1,-1]
    }
    
    // MARK: - IsPalindrome
    /*
     Given a string s, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
     Input: s = "A man, a plan, a canal: Panama"
     Output: true
     Explanation: "amanaplanacanalpanama" is a palindrome.
     */
    func isPalindromTest() {
        let result = isPalindrome("A man, a plan, a canal: Panama")
        print("result : \(result)")
    }
    
    func isPalindrome(_ palindrome: String) -> Bool {
        let newPalindrom = palindrome.lowercased().replacingOccurrences(of: " ", with: "").replacingOccurrences(of: ",", with: "").replacingOccurrences(of: ":", with: "")
        print("newPalindrom : \(newPalindrom)")
        
        let palindromCount = newPalindrom.count
        
        for var i in 0..<palindromCount
        {
            let firstIndex = newPalindrom[newPalindrom.index(newPalindrom.startIndex, offsetBy: i)]
            let secondIndex = newPalindrom[newPalindrom.index(newPalindrom.startIndex, offsetBy: palindromCount-1-i)]
            if firstIndex != secondIndex{
                return false}
        }
        return true
    }
    // MARK: - Valid Anagram
    /*
     Given two strings s and t, return true if t is an anagram of s, and false otherwise.
     Input: s = "anagram", t = "nagaram"
     Output: true
     */
    func isAnagramTest() {
        let firstCharacter = "anagram"
        let secondCharacter = "nagaram"
        let result = isAnagram(firstCharacter,secondCharacter)
        print("isAnagram : \(result)")
    }
    
   func isAnagram(_ firstCharacter: String, _ secondCharacter: String) -> Bool {
    return firstCharacter.lowercased().replacingOccurrences(of: " ", with: "").sorted() == secondCharacter.lowercased().replacingOccurrences(of: " ", with: "").sorted()
    }
    
    // MARK: - Contains Duplicate
    /*
     Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
     Input: nums = [1,2,3,1]
     Output: true
     Input: nums = [1,2,3,4]
     Output: false
     */
    func duplicateTest() {
        var nums = [1,2,3,1]
        var result = containsDuplicate(nums)
        print("result \(result)")
        nums = [1,2,3,4]
        result = containsDuplicate(nums)
        print("result \(result)")
    }
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let counts = nums.count
        var result: [String:Int] = [:]
        
        for i in 0..<counts {
            var key = String(nums[i])
            if result[key] == nil {
                result[key] = 1
            }
            else{
                var val = Int(result[key]!)
                val += 1
                result[key] = val
            }
            print("key \(key)")
        }
        print("result : \(result)")
        for (key,val) in result {
            if val>1 {
                return true;
            }
        }
        return false
    }
    
    // MARK: - Merge Sorted Array
    /*
    
     You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
     Merge nums1 and nums2 into a single array sorted in non-decreasing order.
     The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
     
     Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
     Output: [1,2,2,3,5,6]
     Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
     The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
     */
    func mergeArraysTest() {
        var nums1 = [1,2,3,0,0,0]
        let m = 3
        let nums2 = [2,5,6]
        let n = 3
        let result = merge(&nums1, m, nums2, n)
        print("Result \(result)")
    }
    
    private func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) ->[Int] {
        var result:[Int] = []
        let index = nums1.index(nums1.startIndex, offsetBy: m)
        print(index)
        let mySubstring = nums1[..<index] // Hello
        //print("mySubstring \(mySubstring)")
        
        let index2 = nums2.index(nums2.startIndex, offsetBy: n)
        print(index2)
        let mySubstring2 = nums2[..<index2]
        //print("mySubstring2 \(mySubstring2)")
        
        result = mySubstring + Array(mySubstring2)
        //print("Result \(result)")
        result = result.sorted()
        //print("Result \(result)")
        return result
    }
    
    // MARK: - Intersection of Two Arrays
    /*
     Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
     
     Input: nums1 = [1,2,2,1], nums2 = [2,2]
     Output: [2,2]
     */
    func arrayIntersectionTest() {
        let nums1 = [1,2,2,1,2,2,2,2,2,2]
        let nums2 = [2,2,1,1]
        let result = intersect(nums1, nums2)
        print("Result :\(result)")
    }
    
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result:[Int] = []
        print(Set(nums1))
        print(Set(nums2))
        for  i in 0..<nums2.count {
            for  j in 0..<nums1.count {
                if nums2[i] == nums1[j] {
                    result.append(nums1[j])
                    break
                }
            }
        }
        return result
    }
    
    // MARK: - Missing Number
    /*
     Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

     Input: nums = [3,0,1]
     Output: 2     
     Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

     */
    func missingNumberTest() {
        let nums = [3,0,1]
        let result = missingNumber(nums)
        print("Result :\(result)")
    }
    
    private func missingNumber(_ nums: [Int]) -> Int {
        var result : Int = 0
        let newNums = nums.sorted()
        for i in 0..<nums.count {
            if newNums[i] != i {
                result = i
                return result
            }
        }
        return -1
    }
    
    
}
