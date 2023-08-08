//
//  FeedViewModel.swift
//  restrogram
//
//  Created by LEONARD on 8/7/23.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task {try await fetchPosts()}
    }
    
    @MainActor
    func fetchPosts() async throws {
        posts = try await PostService.fetchFeedPosts()
    }
}

