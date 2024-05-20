//
//  SettingsPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct SettingsPage: View {
    @Binding var accountInfo: AccountConstruct
    @Binding var accInfo: [AccountList]
    @State private var changeInfo: AccountConstruct = AccountConstruct(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)
    @State private var changeConfmPass = ""
    @State private var userExists:Bool = false
    @State private var pasCondMet:Bool = false
    @State private var popUpText = ""
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Change Info")
                        .font(.largeTitle)
                    TextField("Username", text: $changeInfo.accountUsername)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)
                    
                    Text("Must Include 1 uppercase and at least 8 Characters")
                        .multilineTextAlignment(.center)
                    
                    SecureField("Password", text: $changeInfo.accountPassword)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)

                    SecureField("Confirm Password", text: $changeConfmPass)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)

                    DatePicker("Date of Birth", selection: $changeInfo.accountDOB, displayedComponents: .date)
                        .padding()
                        .multilineTextAlignment(.center)

                    TextField("Email", text: $changeInfo.accountEmail)
                        .multilineTextAlignment(.center)
                        .frame(width: 200, height: 25)
                        .border(Color.black)
                        .border(Color.black, width: 2)
                        .cornerRadius(5)
                    
                    Button {
                        for x in accInfo.indices{
                            if (changeInfo.accountUsername == accInfo[x].accountUsername){
                                userExists = true
                            }
                        }
                        for x in changeInfo.accountPassword.indices{
                            if (changeInfo.accountPassword[x].isUppercase == true) {
                                if (changeInfo.accountPassword == changeConfmPass) {
                                    if (changeInfo.accountPassword.count >= 8){
                                        pasCondMet = true
                                    }
                                }
                            }
                        }
                        if (userExists == false && pasCondMet == true) {
                            for x in accInfo.indices{
                                if accInfo[x].accountUsername == accountInfo.accountUsername{
                                    accountInfo.accountUsername = changeInfo.accountUsername
                                    accountInfo.accountPassword = changeInfo.accountPassword
                                    accountInfo.accountDOB = changeInfo.accountDOB
                                    accountInfo.accountEmail = changeInfo.accountEmail
                                    accInfo[x].accountUsername = changeInfo.accountUsername
                                    accInfo[x].accountPassword = changeInfo.accountPassword
                                    accInfo[x].accountDOB = changeInfo.accountDOB
                                    accInfo[x].accountEmail = changeInfo.accountEmail
                                    popUpText = "Success"
                                }
                            }
                        } else {
                            popUpText = "Account Username taken or Password not strong enough"
                        }
                        userExists = false
                        pasCondMet = false
                    } label: {
                        Text("Change")
                            .padding()
                            .frame(width: 125, height:50)
                            .background(.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Text("\(popUpText)")
                }
                .frame(width: 350, height: 600)
                .background(.white)
                .cornerRadius(20)
                .ignoresSafeArea(.all)
                .padding()
            }
            .frame(width: 400, height: 760)
            .ignoresSafeArea()
            .background(.cyan)
        })
    }
}

#Preview {
    SettingsPage(accountInfo: .constant(AccountConstruct(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)), accInfo: .constant([AccountList(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)]))
}
