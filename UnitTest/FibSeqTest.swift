//
//  FibonacciSequence.swift
//  UnitTest
//
//  Created by ZK on 2022/7/22.
//

import XCTest

class FibSeqTest: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUpWithError")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("tearDownWithError")
    }

    func testExample() throws {
        testFib()
    }

    func testFib1Performance() throws {
        measure {
            print(fib1(20))
        }
    }
    
    func testFib2Performance() throws {
        measure {
            print(fib2(20))
        }
    }

}
