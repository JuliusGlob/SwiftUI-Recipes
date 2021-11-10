//
//  ViewC.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct ViewC: View {
    
    @Binding var rootActive: Bool

    var body: some View {
        VStack {
            Text("View C")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            Button("Go To View A") {
                rootActive = false
            }.foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
        .navigationTitle("View C")
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            ViewC(rootActive: .constant(false))
        }
        
    }
}
