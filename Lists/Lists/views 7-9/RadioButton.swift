//
//  RadioButton.swift
//  Lists
//
//  Created by Julio Ismael Robles on 08/11/2021.
//

import SwiftUI

struct RadioButton: View {
    
    @State private var selectedChoice: String = ""
    
    let choices = ["Student", "Staff", "Faculty"]
    
    var body: some View {
        List(choices, id: \.self) { choice in
            Text(choice)
            Spacer()
            // on iOS 15 : circle.inset.filled
            Image(systemName: selectedChoice == choice ? "smallcircle.fill.circle" : "circle")
                .onTapGesture {
                    selectedChoice = choice
                }.font(.title)
                .foregroundColor(.blue)
        }
    }
}

struct RadioButton_Previews: PreviewProvider {
    static var previews: some View {
        RadioButton()
    }
}
