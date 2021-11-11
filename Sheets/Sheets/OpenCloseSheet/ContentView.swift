//
//  ContentView.swift
//  Sheets
//
//  Created by Julio Ismael Robles on 11/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    @State private var dismissed: Bool = false
    var body: some View {
        VStack{
            Button("Add Item") {
                isPresented = true
            }
            Text(dismissed ? "Dismissed" : "")
        }.sheet(isPresented: $isPresented, onDismiss: {
            dismissed = true
        }, content: {
            AddItemView()
        })
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
