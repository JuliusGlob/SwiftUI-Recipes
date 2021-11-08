//
//  ContentView.swift
//  Lists
//
//  Created by Julio Ismael Robles on 05/11/2021.
//

import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    let friends = [Friend(name: "John"),
                   Friend(name: "Mary"),
                   Friend(name: "Steven"),
                   Friend(name: "John")]
    var body: some View {
        ///a list needs an unique id, it can be anything or just use identifiable
        List(friends.indices) { index in
            let friend = friends[index]
            HStack {
                Text("\(index + 1) -")
                Text(friend.name)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
