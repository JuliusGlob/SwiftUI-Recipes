//
//  AddingImageToNav.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct AddingImageToNav: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("List of Plants")
            }
            .navigationTitle("Plants")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct AddingImageToNav_Previews: PreviewProvider {
    static var previews: some View {
        AddingImageToNav()
    }
}
