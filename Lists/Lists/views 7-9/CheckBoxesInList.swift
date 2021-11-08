//
//  CheckBoxesInList.swift
//  Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct CheckBoxesInList: View {
    
    @State private var selectedFruits: [String] = [String]()
    let fruits = ["Apple", "Orange", "Banana", "Cherry", "Kiwi"]
    
    var body: some View {
        VStack {
            List(fruits, id: \.self) { fruit in
                Text(fruit)
                Spacer()
                ZStack {
                    if selectedFruits.contains(fruit) {
                        Image(systemName: "checkmark.square.fill")
                            .font(.largeTitle)
                    } else {
                        Image(systemName: "square")
                            .font(.largeTitle)
                    }
                    
                }.foregroundColor(.blue)
                .onTapGesture {
                    if selectedFruits.contains(fruit) {
                        selectedFruits = selectedFruits.filter { $0 != fruit }
                    } else {
                        selectedFruits.append(fruit)
                    }
                }
                
            }
            Text("Selected fruit")
                .font(.title)
            List(selectedFruits, id: \.self) { fruit in
                Text(fruit)
                    .font(.body)
            }
        }
    }
}

struct CheckBoxesInList_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxesInList()
    }
}
