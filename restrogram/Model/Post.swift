//
//  Post.swift
//  restrogram
//
//  Created by LEONARD on 7/25/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "yayaya", likes: 12, imageUrl: "Oyster", timestamp: Date(), user: User.MOCK_USERS[0]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "yummmmm", likes: 231, imageUrl: "Oyster", timestamp: Date(), user: User.MOCK_USERS[2]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "so good", likes: 54, imageUrl: "Oyster", timestamp: Date(), user: User.MOCK_USERS[2]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "happy day!", likes: 30, imageUrl: "Oyster", timestamp: Date(), user: User.MOCK_USERS[1])
    ]
}
