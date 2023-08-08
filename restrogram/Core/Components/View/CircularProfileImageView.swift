//
//  CircularProfileImageView.swift
//  restrogram
//
//  Created by LEONARD on 8/1/23.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize{
    case small
    case medium
    case large
    
    var dimension: CGFloat {
        switch self{
        case .small:
            return 40
        case .medium:
            return 48
        case .large:
            return 80
        }
    }
}

struct CircularProfileImageView: View {
    let user: User
    let size: ProfileImageSize
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
                .foregroundColor(.gray)
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USERS[0], size: .large)
    }
}
