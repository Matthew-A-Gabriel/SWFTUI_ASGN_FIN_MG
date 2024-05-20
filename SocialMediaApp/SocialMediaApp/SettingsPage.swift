//
//  SettingsPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct SettingsPage: View {
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Settings Page Here")
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
    SettingsPage()
}
