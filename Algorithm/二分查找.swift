//
//  二分查找.swift
//  Algorithm
//
//  Created by ZK on 2022/7/31.
//

import Foundation

class Solution {

    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let midIndex = (right - left) / 2 + left
            let midValue = nums[midIndex]
            
            if target == midValue {
                return midIndex
            } else if target > midValue {
                left = midIndex + 1
            } else {
                right = midIndex - 1
            }
        }
        
        return -1
    }
}
