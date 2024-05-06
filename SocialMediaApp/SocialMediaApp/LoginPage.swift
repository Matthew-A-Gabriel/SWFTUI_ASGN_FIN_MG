//
//  LoginPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Log In Page Here")
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
    LoginPage()
}
