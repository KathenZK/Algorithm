//
//  main.swift
//  Algorithm
//
//  Created by ZK on 2022/7/20.
//

import Foundation

//0 1 1 2 3 5 8 13
func fib1(_ n: UInt) -> UInt {
    if (n <= 1) {
        return n
    }
    
    return fib1(n - 1) + fib1(n - 2)
}

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

testFib()
