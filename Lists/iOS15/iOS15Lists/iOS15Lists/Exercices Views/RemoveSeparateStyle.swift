//
//  RemoveSeparateStyle.swift
//  iOS15Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct RemoveSeparateStyle: View {
    var body: some View {
        NavigationView {
            List(1...20, id: \.self) { index in
                HStack {
                    Text("\(index)")
                    Spacer()
                }.listRowSeparator(.hidden)
            }
        }.listStyle(.plain)
    }
}

struct RemoveSeparateStyle_Previews: PreviewProvider {
    static var previews: some View {
        RemoveSeparateStyle()
    }
}
