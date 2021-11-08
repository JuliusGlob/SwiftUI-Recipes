//
//  HideSeparator.swift
//  Lists
//
//  Created by Julio Ismael Robles on 05/11/2021.
//  Note that this view will only work on iOS 15 >

import SwiftUI

struct HideSeparator: View {
    var body: some View {
        NavigationView {
            List(1...20, id: \.self) { index in
                HStack{
                    Text("\(index)")
                    Spacer()
                }
                //.listRowSeparator(.hidden)//remove coment on ios 15+
            }.listStyle(PlainListStyle())// can be replaced for .plain on iOS 15+
        }
    }
}

struct HideSeparator_Previews: PreviewProvider {
    static var previews: some View {
        HideSeparator()
    }
}
