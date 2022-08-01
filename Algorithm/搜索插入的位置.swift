//
//  搜索插入的位置.swift
//  Algorithm
//
//  Created by ZK on 2022/8/1.
//

import Foundation

class Solution3 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        let lenght = nums.count
        var left = 0
        var right = lenght - 1
        var mid = 0
        var index = lenght
        
        while left <= right {
            mid = ((right - left) >> 1) + left
            let midValue = nums[mid]
            
            if midValue == target {
                return mid
            } else if (target > midValue) {
                left = mid + 1
            } else {
                right = mid - 1
                index = mid
            }
        }
        
        return index
    }
}
