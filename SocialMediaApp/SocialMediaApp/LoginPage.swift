//
//  LoginPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct LoginPage: View {
    @State var placehldr = ""
    @State var placehldrPass = ""
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Login in Page Here")
                    
                    TextField("Username", text: $placehldr)
                        .multilineTextAlignment(.center)
                    
                    SecureField("Password", text: $placehldrPass)
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
    LoginPage()
}
