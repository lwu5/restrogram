//
//  UserService.swift
//  restrogram
//
//  Created by LEONARD on 7/31/23.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    static func fetchUsers() async throws -> [User] {
        
        let snapshot = try await Firestore.firestore().collection("user").getDocuments()
        
        return snapshot.documents.compactMap({try? $0.data(as: User.self)})
    }
}
