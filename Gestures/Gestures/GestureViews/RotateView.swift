//
//  RotateView.swift
//  Gestures
//
//  Created by Julio Ismael Robles on 08/11/2021.
//

import SwiftUI

struct RotateView: View {
    
    @State private var degrees: Double = 0.0
    
    var body: some View {
        VStack {
            
            Image("cat2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees(degrees))
                .padding(.top, 50)
                .animation(.default)
            Spacer()
            
            Button("Rotate") {
                    degrees += 90
            }
        }.padding()
    }
}

struct RotateView_Previews: PreviewProvider {
    static var previews: some View {
        RotateView()
    }
}
