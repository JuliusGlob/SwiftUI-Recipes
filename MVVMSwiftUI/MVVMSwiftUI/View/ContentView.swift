//
//  ContentView.swift
//  MVVMSwiftUI
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var postListVM = PostListViewModel()
    
    var body: some View {
        List(postListVM.posts, id: \.id) { post in
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                Text(post.body)
                    
            }
        }.onAppear {
            postListVM.populatePosts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
