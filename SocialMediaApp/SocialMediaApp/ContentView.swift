//
//  ContentView.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Home Page Here")
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
    ContentView()
}
