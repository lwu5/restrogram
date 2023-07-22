//
//  SearchView.swift
//  restrogram
//
//  Created by LEONARD on 7/21/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0...10, id: \.self) { user in
                        HStack {
                            Image("Oyster")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 48, height: 48)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("OysterHalebyCrush")
                                    .fontWeight(.semibold)
                                Text("Oyster Hale by Crush")
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                            
                    }
                    .padding(.top, 8)
                    .searchable(text: $searchText, prompt: "Searching...")
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
