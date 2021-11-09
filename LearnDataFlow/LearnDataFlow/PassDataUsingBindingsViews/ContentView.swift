//
//  ContentView.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    @State private var name: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Text(name)
                .font(.largeTitle)
            Button("Add Item") {
                name = ""
                isPresented = true
            }
        }.sheet(isPresented: $isPresented, content: {
            AddItemView(name: $name)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
