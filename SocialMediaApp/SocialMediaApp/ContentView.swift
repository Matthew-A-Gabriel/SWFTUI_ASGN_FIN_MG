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
    var StrLikes: Int
    var StrLiked: Bool
    var StrComments: Int
}


struct ContentView: View {
    @State private var postList: [PostConstruct] = [PostConstruct(StrAccName: "Insane_Clown", StrAccImage: "Default Avatar", StrHeading: "This is a Test", StrContent: "Testing 123 Testing 123", StrLikes: 15, StrLiked: false, StrComments: 2)]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        TabView{
            
            NavigationView{
                ZStack{
                    ScrollView{
                        VStack {
                            Text("Welcome to the Atmosphere")
                                .padding()
                                .font(.title)
                                .foregroundColor(.cyan)
                                .background(.white)
                                .frame(width: 375, height: 50)
                                .cornerRadius(100)
                                .position(CGPoint(x: 175.0, y: 25.0))
                                .multilineTextAlignment(.center)
                            
                            ForEach(postList.indices, id: \.self) {index in
                                VStack{
                                    HStack{
                                        Text(postList[index].StrAccName)
                                        Image("\(postList[index].StrAccImage)")
                                        Text(postList[index].StrHeading)
                                    }
                                    Text(postList[index].StrContent)
                                    HStack{
                                        Text("Likes \(postList[index].StrLikes)")
                                        Text("Comments \(postList[index].StrComments)")

                                    }
                                }
                                .frame(width: 275, height: 100)
                                .background(.white)
                                .cornerRadius(10)
                                
                            }
                            
                        }
                        .padding()
                        .position(CGPoint(x: 200.0, y: 200.0))
                    }
                }
                .ignoresSafeArea()
                .background(.cyan)
            }
            .tabItem {
                Text("Main Page")
            }
            AccountPage()
                .tabItem {
                    Text("Account")
                }
            PostPage()
                .tabItem {
                    Text("Make a Post")
                }
            LoginPage()
                .tabItem {
                    Text("Log In")
                }
        }
    }
}

#Preview {
    ContentView()
}




//Ignore this
//                 This Below is the navigation bar thing
                
           
//                HStack{
//                    NavigationLink("Account", destination: {
//                        AccountPage()
//                    })
//                    .foregroundColor(.cyan)
//                    .frame(width: 80, height: 50)
//                    .background(.white)
//                    .cornerRadius(100)
//                    .padding()
//                    NavigationLink("POST", destination: {
//                        PostPage()
//                    })
//                    .foregroundColor(.cyan)
//                    .frame(width: 80, height: 50)
//                    .background(.white)
//                    .cornerRadius(100)
//                    .padding()
//                    NavigationLink("LOGIN", destination: {
//                        LoginPage()
//                    })
//                    .foregroundColor(.cyan)
//                    .frame(width: 80, height: 50)
//                    .background(.white)
//                    .cornerRadius(100)
//                    .padding()
                
//                    Image("PFP")
//                       .resizable()
//                       .frame(width: 50, height: 50)
//                       .background(.white)
//                       .cornerRadius(100)
//                       .position(CGPoint(x: 180.0, y: 10.0))
//                       .padding(.vertical)
//                }
//                .position(CGPoint(x: 200.0, y: 100.0))
