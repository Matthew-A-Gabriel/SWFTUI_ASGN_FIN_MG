//
//  SignUpPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct SignUpPage: View {
    @State private var newUser = ""
    @State private var newPass = ""
    @State private var newConfmPass = ""
    @State private var newDate: Date = Date.now
    @State private var newEmail = ""
    @State private var userExists:Bool = false
    @State private var pasCondMet:Bool = false
    @State private var text = ""
    @Binding var accInfo: [AccountList]

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
                    

                    TextField("Username", text: $newUser)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)
                    
                    Text("Must Include 1 uppercase and at least 8 Characters")
                        .multilineTextAlignment(.center)
                    
                    SecureField("Password", text: $newPass)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)

                    SecureField("Confirm Password", text: $newConfmPass)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)

                    DatePicker("Date of Birth", selection: $newDate, displayedComponents: .date)
                        .padding()
                        .multilineTextAlignment(.center)

                    TextField("Email", text: $newEmail)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)
                    
                    Button {
                        for x in accInfo.indices{
                            if (newUser == accInfo[x].accountUsername){
                                userExists = true
                            }
                        }
                    } label: {
                        Text("Sign Up")
                            .padding()
                            .frame(width: 125, height:50)
                            .background(.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Text("")

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
    SignUpPage(accInfo: .constant([AccountList(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)]))
}
