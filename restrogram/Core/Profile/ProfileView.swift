//
//  ProfileView.swift
//  restrogram
//
//  Created by LEONARD on 7/21/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let GridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 10){
                    // pic and stats
                    HStack {
                        Image("Oyster")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            
                        Spacer()
                        
                        HStack(spacing:8) {
                            UserStatView(value: 12, title: "Posts")
                            UserStatView(value: 32, title: "Follower")
                            UserStatView(value: 23, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Oyster Hale by Crush")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Top 10 oyster restaurant in Honolulu!")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    
                    // action button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .strokeBorder(.gray, lineWidth: 1))
                    }
                    .padding()
                    
                    Divider()
                }
                
                // post grid
                
                LazyVGrid(columns: GridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("Oyster")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
