//
//  SignUpPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct SignUpPage: View {
    @State var placehldr = ""
    @State var placehldrPass = ""
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Sign Up Page Here")

                    TextField("Username", text: $placehldr)
                        .multilineTextAlignment(.center)

                    SecureField("Password", text: $placehldrPass)
                        .multilineTextAlignment(.center)

                    SecureField("Confirm Password", text: $placehldrPass)
                        .multilineTextAlignment(.center)

                    TextField("Date of Birth", text: $placehldr)
                        .multilineTextAlignment(.center)

                    TextField("Email", text: $placehldr)
                        .multilineTextAlignment(.center)
                    
                    Button {
                        
                    } label: {
                        Text("Log In")
                            .padding()
                            .frame(width: 125, height:50)
                            .background(.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }

                }
                .frame(width: 350 , height: 600)
                .background(.white)
                .ignoresSafeArea(.all)
                .cornerRadius(20)
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
