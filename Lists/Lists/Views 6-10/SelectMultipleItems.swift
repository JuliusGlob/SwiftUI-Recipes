//
//  SelectMultipleItems.swift
//  Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct Customer: Identifiable {
    let id = UUID()
    let name: String
}

struct SelectMultipleItems: View {
    
    @State private var customers = [
        Customer(name: "John"), Customer(name: "Alex"), Customer(name: "George"), Customer(name: "Richard"), Customer(name: "Jasmine"), Customer(name: "Peter"), Customer(name: "Stark"), Customer(name: "Lilith")
    ]
    @State private var selectedCustomerIds = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(customers, selection: $selectedCustomerIds) { customer in
                HStack {
                    Text(customer.name)
                    Spacer()
                }
            }
            .toolbar {
                EditButton()
            }
            .navigationTitle("Selected \(selectedCustomerIds.count)")
        }
    }
}

struct SelectMultipleItems_Previews: PreviewProvider {
    static var previews: some View {
        SelectMultipleItems()
    }
}
