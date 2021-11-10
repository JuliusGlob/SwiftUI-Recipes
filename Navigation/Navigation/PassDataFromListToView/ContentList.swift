//
//  ContentList.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct ContentList: View {
    
    let customers = ["Alex", "Mary", "John", "Jerry", "Steven"]
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                List(customers, id: \.self) { customer in
                    NavigationLink(destination: ListDetailView(displayName: customer)) {
                        
                        Text(customer)
                            .foregroundColor(.white)
                    }.listRowBackground(Color.blue)
                        .listRowSeparatorTint(Color.black)
                    
                }
            }
            .navigationTitle("Customers")
            
        }
    }
}

struct ContentList_Previews: PreviewProvider {
    static var previews: some View {
        ContentList()
    }
}
