//
//  User.swift
//  restrogram
//
//  Created by LEONARD on 7/25/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "oyster.hale", profileImageUrl: nil, fullname: "Oyster Hale by Crush", bio: "Yummy!", email: "oyster@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "porkbelly", profileImageUrl: nil, fullname: "Pork belly", bio: "We love pork belly", email: "porkbelly@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "ono", profileImageUrl: nil, fullname: "Ono Fish", bio: "Ono Ono", email: "ono@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "chickenteriyaki", profileImageUrl: nil, fullname: nil, bio: "lunchbox available", email: "teriyaki@gmail.com"),
    ]
}
