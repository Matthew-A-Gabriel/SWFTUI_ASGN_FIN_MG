//
//  LoginPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct AccountList{
    var accountUsername: String
    var accountPassword: String
    var accountEmail: String
    var accountDOB: Date
}

struct LoginPage: View {
    
    @Binding var accountInfo: AccountConstruct
    @State private var accInfo: [AccountList] = [AccountList(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.init()), ]
    @State private var intermediateName: String = ""
    @State private var intermediatePass: String = ""
    @State private var testVari: String = ""
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    Image("Door")
                        .resizable()
                        .padding()
                        .border(Color.black, width:4)
                        .frame(width: 125, height: 175)
                        .cornerRadius(5)
                    Text("Log Into your Account!")
                    
                    TextField("Username", text: $intermediateName)
                        .multilineTextAlignment(.center)
                    
                    SecureField("Password", text: $intermediatePass)
                        .multilineTextAlignment(.center)
                    Button {
                        for x in accInfo.indices{
                            if accInfo[x].accountUsername == intermediateName && accInfo[x].accountPassword == intermediatePass{
                                accountInfo.accountUsername = accInfo[x].accountUsername
                                accountInfo.accountPassword = accInfo[x].accountPassword
                                accountInfo.accountDOB = accInfo[x].accountDOB
                                accountInfo.accountEmail = accInfo[x].accountEmail
                            }
                        }
                    } label: {
                        Text("Log In")
                            .padding()
                            .frame(width: 125, height:50)
                            .background(.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Text("\(testVari)")
                    
                    NavigationLink("Don't Have an Account?" , destination: {
                        SignUpPage(accInfo: $accInfo)
                    })
                    .navigationBarBackButtonHidden(true)
                    .foregroundColor(.blue)
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
            
        }
    }
}

#Preview {
    LoginPage(accountInfo: .constant(AccountConstruct(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)))
}
