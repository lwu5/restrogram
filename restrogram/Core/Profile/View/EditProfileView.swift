//
//  EditProfileView.swift
//  restrogram
//
//  Created by LEONARD on 8/1/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: EditProfileViewModel
    
    init(user: User){
        self._viewModel = StateObject(wrappedValue: EditProfileViewModel(user: user))
    }
    
    var body: some View {
        VStack {
            
            VStack{
                HStack {
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                        Task { try await viewModel.updateUserData() }
                        dismiss()
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                
                Divider()
            }
            
            // edit profile pic
            
            PhotosPicker(selection: $viewModel.selectedImage) {
                
                VStack {
                    if let image = viewModel.profileImage {
                        image
                            .resizable()
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                            .frame(width: 80, height: 80)
                    } else {
                        CircularProfileImageView(user: viewModel.user, size: .large)
                    }
                    
                    Text("Edit profile structure")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Divider()
                }
            }
            .padding(.vertical, 8)
            
            // edit profile info
           
            VStack {
                
                HStack {
                    Text("Name")
                        .padding(.leading, 10)
                        .frame(width: 100, alignment: .leading)
                    
                    VStack {
                        TextField("Enter your name", text: $viewModel.fullname)
                    }
                    
                    Divider()
                }
                .font(.subheadline)
                .frame(height: 36)
                
                HStack {
                    Text("bio")
                        .padding(.leading, 10)
                        .frame(width: 100, alignment: .leading)
                    
                    VStack {
                        TextField("Enter your bio", text: $viewModel.bio)
                    }
                    
                    Divider()
                }
                .font(.subheadline)
                .frame(height: 36)
                
                
            }
            
            Spacer()
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(user: User.MOCK_USERS[0])
    }
}
