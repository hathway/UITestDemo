//
//  UITestDemoUITests.swift
//  UITestDemoUITests
//
//  Created by Eneko Alonso on 6/9/15.
//  Copyright © 2015 Hathway, Inc. All rights reserved.
//

import Foundation
import XCTest

class UITestDemoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOrangeThenBlue() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        app.buttons["Orange"].tap()
        
        let backButton = app.navigationBars["UIView"].childrenMatchingType(.Button).matchingIdentifier("Back").elementAtIndex(0)
        backButton.tap()
        app.buttons["Blue"].tap()
        backButton.tap()
        
    }
    
}
