//
//  第一个错误版本.swift
//  Algorithm
//
//  Created by ZK on 2022/8/1.
//

import Foundation

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool {
        return version == 4
    }
}

class Solution2 : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0
        var right = n
        
        while left < right {
            let mid = (right - left) / 2 + left
            if isBadVersion(mid) {
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        return left
    }
}
