//
//  ContentView.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct PostConstruct{
    var StrAccName: String
    var StrAccImage: String
    var StrHeading: String
    var StrContent: String
}


struct ContentView: View {
    @State private var postList: [PostConstruct] = []
    var body: some View {
        NavigationView(content: {
            ZStack{
                ScrollView{
                    VStack {
                        Text("Home Page Here")
                        Text("Name of app prop: Atmosphere")
                    }
                    .padding()
                    .position(CGPoint(x: 200.0, y: 200.0))
                }
//                 This Below is the navigation bar thing
                HStack{
                    NavigationLink("Account", destination: {
                        AccountPage()
                    })
                    .foregroundColor(.cyan)
                    .frame(width: 80, height: 50)
                    .background(.white)
                    .cornerRadius(100)
                    .padding()
                    NavigationLink("POST", destination: {
                        PostPage()
                    })
                    .foregroundColor(.cyan)
                    .frame(width: 80, height: 50)
                    .background(.white)
                    .cornerRadius(100)
                    .padding()
                    NavigationLink("LOGIN", destination: {
                        LoginPage()
                    })
                    .foregroundColor(.cyan)
                    .frame(width: 80, height: 50)
                    .background(.white)
                    .cornerRadius(100)
                    .padding()
                }
                .position(CGPoint(x: 200.0, y: 100.0))
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
