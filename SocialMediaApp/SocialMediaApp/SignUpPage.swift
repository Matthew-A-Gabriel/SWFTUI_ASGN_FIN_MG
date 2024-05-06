//
//  SignUpPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct SignUpPage: View {
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Sign Up Page Here")
                }
                .padding()
            }
            .frame(width: 400, height: 760)
            .ignoresSafeArea()
            .background(.cyan)
        })
    }
}

#Preview {
    SignUpPage()
}
