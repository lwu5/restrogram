//
//  User.swift
//  restrogram
//
//  Created by LEONARD on 7/25/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "oyster.hale", profileImageUrl: "Oyster", fullname: "Oyster Hale by Crush", bio: "Yummy!", email: "oyster@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "porkbelly", profileImageUrl: "Oyster", fullname: "Pork belly", bio: "We love pork belly", email: "porkbelly@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "ono", profileImageUrl: "Oyster", fullname: "Ono Fish", bio: "Ono Ono", email: "ono@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "chickenteriyaki", profileImageUrl: "Oyster", fullname: nil, bio: "lunchbox available", email: "teriyaki@gmail.com"),
    ]
}
