//
//  FeedCell.swift
//  restrogram
//
//  Created by LEONARD on 7/21/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // profile picture + username
            HStack {
                Image("Oyster")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("OysterHalebyCrush")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 8)
            
            // post image
            Image("Oyster")
                .resizable()
                .scaledToFill()
                .frame(height:400)
                .clipShape(Rectangle())
            
            // action button
            HStack(spacing: 16){
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("share post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .foregroundColor(.black)
            
            // likes
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth:.infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // caption label
            HStack {
                Text("OysterHalebyCrush ")
                    .fontWeight(.semibold) +
                Text("some yummy oysters!!")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            // time stamp
            Text("2h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
