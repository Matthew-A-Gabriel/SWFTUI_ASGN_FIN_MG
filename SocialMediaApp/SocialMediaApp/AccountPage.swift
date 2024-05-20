//
//  AccountPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI



struct AccountPage: View {
    @Binding var accountInfo: AccountConstruct
    @State private var dateFormat: String = ""
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    HStack{
                        Image("PFP")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(10)
                        Text("\(accountInfo.accountUsername)")
                            .font(.largeTitle)
                    }
                    Text("\(accountInfo.accountEmail)")
                    Text("\(accountInfo.accountDOB)")
                        .font(.system(size: 10))
                        
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
    AccountPage(accountInfo: .constant(AccountConstruct(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)))
}
