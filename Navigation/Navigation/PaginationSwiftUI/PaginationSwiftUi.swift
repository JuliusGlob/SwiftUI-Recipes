//
//  PaginationSwiftUi.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct PaginationSwiftUi: View {
    var body: some View {
        TabView {
            Text("One")
            Text("Two")
            Text("Three")
        }.tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct PaginationSwiftUi_Previews: PreviewProvider {
    static var previews: some View {
        PaginationSwiftUi()
    }
}
