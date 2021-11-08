//
//  AutoScrollToSection.swift
//  Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct AutoScrollToSection: View {
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                Button("Scroll to 150") {
                    withAnimation{
                        proxy.scrollTo(150)
                    }
                }
                List(1...500, id: \.self) { index in
                    Text("\(index)")
                        .id(index)
                    
                }
            }
        }
    }
}

struct AutoScrollToSection_Previews: PreviewProvider {
    static var previews: some View {
        AutoScrollToSection()
    }
}
