//
//  FibonacciSequence.swift
//  Algorithm
//
//  Created by ZK on 2022/7/22.
//

import Foundation

///斐波那契数列，前两数相加等于第三个数，如： 0 1 1 2 3 5 8 13
///时间复杂度：O(2^n)
func fib1(_ n: UInt) -> UInt {
    if (n <= 1) {
        return n
    }
    
    return fib1(n - 1) + fib1(n - 2)
}

///时间复杂度：O(n)
func fib2(_ n: UInt) -> UInt {
    if (n <= 1) {
        return n
    }
    
    var first = 0
    var second = 1
    
    
    for _ in 1...n - 1 {
//        let sum = first + second
//        first = second
//        second = sum
        (first, second) = (second, first + second)
    }
    
    return UInt(second)
}

func testFib() {
    for i in 0...10 {
        print(i)
        print("fib1:\(fib1(UInt(i)))")
        print("fib2:\(fib2(UInt(i)))")
    }
    
//    print("fib1(64):\(fib1(64))")
    print("fib2(64):\(fib2(64))")
}

