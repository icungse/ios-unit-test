//
//  User.swift
//  unit-test
//
//  Created by Saiful on 21/08/19.
//  Copyright © 2019 Saiful. All rights reserved.
//

import Foundation

class User {
    private let firstName: String
    private let lastName: String
    
    var followers: [User] = []
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func addFollower(follower: User) {
        followers.append(follower)
    }
    
    func validFirstName() -> Bool {
        return firstName.count > 3
    }
    
    func validLastName() -> Bool {
        return lastName.count > 3
    }
}
