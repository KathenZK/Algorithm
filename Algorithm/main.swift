//
//  main.swift
//  Algorithm
//
//  Created by ZK on 2022/7/20.
//

import Foundation

//fib2(3)

//testFib()

var elements: [Int] = [1, 2 , 5]
//print(elements.contains(5)

func contains<T: Equatable> (_ elements: [T], _ element: T) -> Bool {
    return elements.contains { $0 == element }
}

print(contains(elements, 1))

