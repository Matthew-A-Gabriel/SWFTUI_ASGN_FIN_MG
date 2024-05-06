//
//  PostPage.swift
//  SocialMediaApp
//
//  Created by StudentAM on 5/3/24.
//

import SwiftUI

struct PostPage: View {
    var body: some View {
        NavigationView(content: {
            ZStack{
                VStack {
                    Text("Post Page Here")
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
    PostPage()
}
