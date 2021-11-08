//
//  MakeRowClickable.swift
//  Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct MakeRowClickable: View {
    
    @State private var selectedIndex: Int?
    
    var body: some View {
        VStack {
            List {
                ForEach(1...10, id: \.self) { index in
                    HStack {
                        Text("\(index)")
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture(perform: {
                        selectedIndex = index
                    })
                }
            }
            selectedIndex.map {
                Text("\($0)")
                    .fontWeight(.bold)
                    .font(.largeTitle)
            }
        }
    }
}

struct MakeRowClickable_Previews: PreviewProvider {
    static var previews: some View {
        MakeRowClickable()
    }
}
