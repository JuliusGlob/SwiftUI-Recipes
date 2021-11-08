//
//  GroupItemsInList.swift
//  Lists
//
//  Created by Julio Ismael Robles on 05/11/2021.
//

import SwiftUI
struct Post: Identifiable {
    let id = UUID()
    let title: String
    let comments: [Comment]
}

struct Comment: Identifiable {
    let id = UUID()
    let title: String
}

struct GroupItemsInList: View {
    let posts = [Post(title: "Post #1",
                      comments: [Comment(title: "Comment 1 for post 1"),
                                 Comment(title: "Comment 1 for post 1")]),
                 Post(title: "Post #2",
                      comments: [Comment(title: "Comment 1 for post 2"),
                                 Comment(title: "Comment 1 for post 2")])
    ]
    var body: some View {
        List {
            ForEach(posts) { post in
                Section(header: Text(post.title)) {
                    ForEach(post.comments) { comment in
                        Text(comment.title)
                    }
                }
            }
            
        }.listStyle(GroupedListStyle())
    }
}

struct GroupItemsInList_Previews: PreviewProvider {
    static var previews: some View {
        GroupItemsInList()
    }
}
