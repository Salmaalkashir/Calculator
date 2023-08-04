//
//  CalculatorTests.swift
//  CalculatorTests
//
//

import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {
    
    var calcobj : CalculatorViewController?
    
    override func setUpWithError() throws {
        calcobj = CalculatorViewController()
    }

    override func tearDownWithError() throws {
        calcobj = nil
    }
    
    
    func testExpression()
    {
        calcobj?.taps = "2*3+4/2-2"
        calcobj?.Expression()
        XCTAssertEqual(calcobj?.resultt, 6)
    }
    
    func testAdd()
    {
        calcobj?.taps = "5+3"
        calcobj?.addd(sender: calcobj!.plus)
        XCTAssertEqual(calcobj?.resultt, 8)
    }
    
    func testSubtract()
    {
        calcobj?.taps = "5-3"
        calcobj?.subtractt(sender: calcobj!.minus)
        XCTAssertEqual(calcobj?.resultt, 2)
    }
    
    func testMultiplication()
    {
        calcobj?.taps = "5*3"
        calcobj?.multiplication(sender: calcobj!.times)
        XCTAssertEqual(calcobj?.resultt, 15)
    }
    
    func testDivision()
    {
        calcobj?.taps = "15/3"
        calcobj?.division(sender: calcobj!.divide)
        XCTAssertEqual(calcobj?.resultt, 5)
    }
}
