//
//  CompleteSignupView.swift
//  restrogram
//
//  Created by LEONARD on 7/25/23.
//

import SwiftUI

struct CompleteSignupView: View {
    @EnvironmentObject var viewModel: RegistrationViewModel
   
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            
            Text("Welcome to Restrogram, \(viewModel.username)")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Text("Click below to complete registration and start using Restrogram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Complete Signup")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 44)
                    .foregroundColor(.white)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
    }

}

struct CompleteSignupView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignupView()
    }
}
