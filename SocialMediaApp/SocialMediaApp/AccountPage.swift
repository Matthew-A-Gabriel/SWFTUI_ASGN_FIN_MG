//
//  AccountPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct AccountPage: View {
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Account Page Here")
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
    AccountPage()
}
