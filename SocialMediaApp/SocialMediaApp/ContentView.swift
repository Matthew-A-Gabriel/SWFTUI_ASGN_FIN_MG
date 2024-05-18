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
struct AccountConstruct{
    var accountUsername: String
    var accountPassword: String
    var accountEmail: String
    var accountDOB: Date
}



struct ContentView: View {
    @State private var postList: [PostConstruct] = [PostConstruct(StrAccName: "Insane_Clown", StrAccImage: "PFP", StrHeading: "This is a Test", StrContent: "Testing 123 Testing 123", StrLikes: 15, StrLiked: false, StrComments: 2)]
    
    
    @State private var accountInfo: AccountConstruct = AccountConstruct(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)
    var body: some View {
        TabView{
            NavigationView{
                ZStack{
                    ScrollView{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                        VStack {
                            Text("Welcome to the Atmosphere")
                                .padding()
                                .font(.title)
                                .foregroundColor(.cyan)
                                .background(.white)
                                .frame(width: 375, height: 50)
                                .cornerRadius(100)
//                                .position(CGPoint(x: 175.0, y: 25.0))
                                .multilineTextAlignment(.center)
                            
                            ForEach(postList.indices, id: \.self) {index in
                                VStack{
                                    HStack{
                                        Image("\(postList[index].StrAccImage)")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .padding()
                                        Text(postList[index].StrAccName)
                                            .font(.headline)
                                    }
                                    Text(postList[index].StrHeading)
                                        .font(.title)
                                    Text(postList[index].StrContent)
                                        .padding()
                                    HStack{
                                        Button("Likes \(postList[index].StrLikes)"){
                                            if postList[index].StrLiked == false {
                                                postList[index].StrLikes += 1
                                                postList[index].StrLiked = true
                                            } else if (postList[index].StrLiked == true){
                                                postList[index].StrLikes -= 1
                                                postList[index].StrLiked = false
                                            }
                                        }
                                        .foregroundColor(.blue)
                                        Text("Comments \(postList[index].StrComments)")

                                    }
                                    Spacer()
                                }
                                .frame(width: 275)
                                .background(.white)
                                .cornerRadius(10)
                                .padding()
                            }
                            Text("The End Of the Line!")
                                .padding()
                                .font(.title)
                                .foregroundColor(.cyan)
                                .background(.white)
                                .cornerRadius(100)
                                .frame(width: 375, height: 50)
                                .multilineTextAlignment(.center)
                            
                            Text("No more Posts beyond this point")
                                .padding()
                                .font(.title)
                                .foregroundColor(.cyan)
                                .background(.white)
                                .frame(width: 375, height: 50)
                                .cornerRadius(100)
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
//                        .position(CGPoint(x: 200.0, y: 200.0))
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
            LoginPage(accountInfo: $accountInfo)
                .tabItem {
                    Text("Log In")

                }
        }
    }
}

#Preview {
    ContentView()
}
