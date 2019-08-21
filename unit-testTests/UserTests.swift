//
//  UserTests.swift
//  unit-testTests
//
//  Created by Saiful on 21/08/19.
//  Copyright © 2019 Saiful. All rights reserved.
//

import Foundation
import XCTest

@testable import unit_test

class UserTest: XCTestCase {
    // MARK: Test case for valid firstname
    func testValidFirstName() {
        let user = User(firstName: "Test", lastName: "Test")
        XCTAssertTrue(user.validFirstName())
    }
    
    // MARK: Test case for invalid firstname
    func testInvalidLastName() {
        let user = User(firstName: "Fa", lastName: "il")
        XCTAssertFalse(user.validLastName())
    }
    
    // MARK: Test case for add f
    func testAddFollower() {
        let bambang = User(firstName: "Bam", lastName: "bang")
        let tinu = User(firstName: "Ti", lastName: "nu")
        
        XCTAssertTrue(bambang.followers.count == 0)
        
        bambang.addFollower(follower: tinu)
        XCTAssertTrue(bambang.followers.count > 0)
    }
}
