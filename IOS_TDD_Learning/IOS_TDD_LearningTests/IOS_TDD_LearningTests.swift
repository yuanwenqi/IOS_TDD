//
//  IOS_TDD_LearningTests.swift
//  IOS_TDD_LearningTests
//
//  Created by Wenqi Yuan  on 17/07/2018.
//  Copyright © 2018 Wenqi Yuan . All rights reserved.
//
import XCTest
@testable import IOS_TDD_Learning

class IOS_TDD_LearningTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    fileprivate func dadadda() {
        for i in 1...3 {
            print(i)
        }
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let a = 3
        XCTAssertTrue(a == 3)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
}
