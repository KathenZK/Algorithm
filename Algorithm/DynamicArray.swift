//
//  DynamicArray.swift
//  Algorithm
//
//  Created by ZK on 2022/7/22.
//

import Foundation

class DynamicArray<T: Comparable> {
    
    public var size: Int {
        return elements.count
    }
    
    private var elements: [T] = []
    
    private let defaultCapatity = 10
    
    init() {
        self.elements.reserveCapacity(defaultCapatity)
    }
    
    init(capatity: Int) {
        
        if capatity >= 1 {
            self.elements.reserveCapacity(capatity)
        } else {
            self.elements.reserveCapacity(defaultCapatity)
        }
    }
    
    func isEmPty() -> Bool {
        return elements.isEmpty
    }
    
    func contains(element: T) -> Bool {
//        elements.contains { $0 == element }
        
        if elements.firstIndex(of: element) == nil {
            return false
        }
        
        return true
    }
    
    func append(element: T) {
        
    }
    
    func insert(_ element: T, at: Int) {
        
    }
    
    func getElement(at: Int) {
        
    }
    
    func index(of: T) -> Int {
        return 0;
    }
    
    func remove(element: T) -> T? {
        return nil;
    }
    
    func removeAll(element: T) -> T? {
        return nil;
    }
}
