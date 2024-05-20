//
//  ContentView.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

//Structs, super important for the orderliness of the website as a whole
struct PostConstruct{
    var StrAccName: String
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

struct AccountList{
    var accountUsername: String
    var accountPassword: String
    var accountEmail: String
    var accountDOB: Date
}

struct ContentView: View {
//    These Variables are the things needed for website to run, having a list for posting Posts, the current Account you are logged into and all the accounts that exist
    @State private var postList: [PostConstruct] = [PostConstruct(StrAccName: "Insane_Clown", StrHeading: "This is a Test", StrContent: "Testing 123 Testing 123", StrLikes: 15, StrLiked: false, StrComments: 2)]
    @State private var accInfo: [AccountList] = [AccountList(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.init())]
    @State private var accountInfo: AccountConstruct = AccountConstruct(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)
    var body: some View {
        TabView{
            NavigationView{
                ZStack{
                    ScrollView{
//                        Spacer to get it to look alright
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                        VStack {
//                            Welcom!
                            Text("Welcome to the Atmosphere")
                                .padding()
                                .font(.title)
                                .foregroundColor(.cyan)
                                .background(.white)
                                .frame(width: 375, height: 50)
                                .cornerRadius(100)
                                .multilineTextAlignment(.center)
//                            For each, this one uses the Post List in order to make each and every post it's own individual thing, comes with Likes!
                            ForEach(postList.indices, id: \.self) {index in
                                VStack{
                                    HStack{
                                        Image("PFP")
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
//                                Little messages that are only here to let u know ther eis nothing else
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
                    }
                }
                .ignoresSafeArea()
                .background(.cyan)
            }
//            Tab Items, these allow you to navigagte to other places. also lets the variables be used elsewhere
            .tabItem {
                Text("Main Page")
                
            }
            AccountPage(accountInfo: $accountInfo, accInfo: $accInfo)
                .tabItem {
                    Text("Account")

                }
            PostPage(accountInfo: $accountInfo, postList: $postList)
                .tabItem {
                    Text("Make a Post")

                }
            LoginPage(accInfo: $accInfo, accountInfo: $accountInfo)
                .tabItem {
                    Text("Log In")

                }
        }
    }
}

#Preview {
    ContentView()
}
