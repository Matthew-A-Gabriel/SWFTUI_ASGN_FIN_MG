//
//  PostPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct PostPage: View {
    @Binding var accountInfo: AccountConstruct
    @Binding var postList: [PostConstruct]
    @State var newPost: PostConstruct = PostConstruct(StrAccName: "", StrHeading: "", StrContent: "", StrLikes: 0, StrLiked: false, StrComments: 0)
    @State private var mesVar: String = ""
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    TextField("Header Here", text: $newPost.StrHeading)
                        .frame(width:250, height: 75)
                        .background(.cyan)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .cornerRadius(20)
                        .padding()
                    
                    TextField("Body Here", text: $newPost.StrContent)
                        .frame(width:250, height: 350)
                        .background(.cyan)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .cornerRadius(20)
                        .padding()
                    
                    Button {
                        if (newPost.StrHeading != "" && newPost.StrContent != "" && accountInfo.accountUsername != ""){
                            newPost.StrAccName = accountInfo.accountUsername
                            postList.append(newPost)
                            mesVar = "Success"
                        } else {
                            mesVar = "make sure all fields are filled in and you are logged in"
                        }
                    } label: {
                        Text("Post")
                    }
                    .frame(width: 125, height:50)
                    .background(.cyan)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Text("\(mesVar)")
                        .font(.system(size: 10))
                                            
                }
                .frame(width: 350, height: 600)
                .background(.white)
                .cornerRadius(20)
                .padding()
            }
            .frame(width: 400, height: 760)
            .ignoresSafeArea()
            .background(.cyan)
        })
    }
}

#Preview {
    PostPage(accountInfo: .constant(AccountConstruct(accountUsername: "", accountPassword: "", accountEmail: "", accountDOB: Date.now)), postList: .constant([PostConstruct(StrAccName: "", StrHeading: "", StrContent: "", StrLikes: 0, StrLiked: false, StrComments: 0)]))
}
