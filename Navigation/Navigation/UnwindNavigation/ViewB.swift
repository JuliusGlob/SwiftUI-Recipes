//
//  ViewB.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct ViewB: View {
    
    @Binding var rootActive: Bool
    
    var body: some View {
        
        VStack {
            NavigationLink(destination: ViewC(rootActive: $rootActive),
                           label: {
                Text("Go To View C")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
        .navigationTitle("View B")
        
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ViewB(rootActive: .constant(false))
        }
    }
}
