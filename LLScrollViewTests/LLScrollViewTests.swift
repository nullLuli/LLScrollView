//
//  LLScrollViewTests.swift
//  LLScrollViewTests
//
//  Created by 李璐 on 2018/3/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

import XCTest

class LLTestClass: NSObject {
    let content = 1
    var name : String?
    
    init(name:String) {
        self.name = name
    }
    
    func testFunc() {
        print(self.name ?? "no name")
    }
}

class LLScrollViewTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let test = LLTestClass(name: "lululi")
        test.testFunc()
    }
    
    func greeting(person:String,day:String) -> String {
        return "hi \(person),how are you at \(day)"
    }
    
    func average(numbers: Int...) -> Float {
        var sum = 0
        var count = 0
        for num in numbers {
            sum += num
            count += 1
        }
        if count == 0 {
            return 0
        }
        else
        {
            return Float(sum)/Float(count)
        }
    }
    
    func blockTest()->((Int...)->Float) {
        return average;
    }
    
    func blockTest2(averageBlock:(Int...)->Float) -> Float {
        return averageBlock(7,8,9) * 2.0
    }
    
    func netQuest(para:Dictionary<String, Any>,block:(Bool)->Void) {
        print("paras : \(para)")
        sleep(3)
        switch arc4random()%2 {
        case 0:
            block(false)
        default:
            block(true)
        }
    }
    
    func sort(array:Array<Int>,isAscending:(Int,Int)->Bool) -> Array<Int> {
        var shouldContinue = false
        var resultArray = array
        print(array)
        print("-------------")
        print(resultArray)
        print("-------------")
        repeat {
            shouldContinue = false
            for i in 0..<resultArray.count
            {
                if i < resultArray.count-1 {
                    let num1 = resultArray[i]
                    let num2 = resultArray[i+1]
                    let shouldMove = isAscending(num1,num2)
                    if shouldMove{
                        resultArray[i] = num2
                        resultArray[i+1] = num1
                        shouldContinue = true
                    }
                }
            }
        }while(shouldContinue)
        
        return resultArray;
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
