//
//  AddingButtonsToNav.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct AddingButtonsToNav: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World")
            }
            .navigationTitle("Customers")
            /*.navigationBarItems(leading: Button(action: {}, label: {
                Image(systemName: "house")
            }), trailing: Button(action: {}, label: {
                Image(systemName: "bolt")
            }))*/ //this will work for versions lower that iOS 15 but will be deprecated
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "house")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "bolt")
                    }
                }
            }
        }
    }
}

struct AddingButtonsToNav_Previews: PreviewProvider {
    static var previews: some View {
        AddingButtonsToNav()
    }
}
