//
//  AlternateRowStyle.swift
//  Lists
//
//  Created by Julio Ismael Robles on 05/11/2021.
//

import SwiftUI


struct AlternateRowStyle: View {
    
    let animals = ["🐶", "🐱", "🐭", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️"]
    var body: some View {
        List(animals.indices, id: \.self) {index in
            let animal = animals[index]
            HStack {
                Text(animal)
                    .font(.largeTitle)
                Spacer()
            }.background(index % 2 == 0 ? Color.yellow : Color.blue)
        }
    }
}

struct AlternateRowStyle_Previews: PreviewProvider {
    static var previews: some View {
        AlternateRowStyle()
    }
}
