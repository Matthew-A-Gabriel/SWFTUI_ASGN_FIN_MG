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
    @State var placehldrConfmPass = ""
    @State var placehldr2 = ""
    @State var placehldrDate: Date = Date.now
    @State var placehldr3 = ""


    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Image("Pencil")
                        .resizable()
                        .padding()
                        .border(Color.black, width:4)
                        .frame(width: 125, height: 110)
                        .cornerRadius(5)
                    Text("Create an Account!")
                    

                    TextField("Username", text: $placehldr)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)

                    SecureField("Password", text: $placehldrPass)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)

                    SecureField("Confirm Password", text: $placehldrConfmPass)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)

                    DatePicker("Date of Birth", selection: $placehldrDate, displayedComponents: .date)
                        .padding()
                        .multilineTextAlignment(.center)

                    TextField("Email", text: $placehldr3)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)
                    
                    Button {
                        
                    } label: {
                        Text("Log In")
                            .padding()
                            .frame(width: 125, height:50)
                            .background(.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink("Already have an Account?" , destination: {
                      LoginPage()
                    })


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
