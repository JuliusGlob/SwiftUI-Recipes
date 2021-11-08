//
//  Rotation3DEffect.swift
//  Gestures
//
//  Created by Julio Ismael Robles on 08/11/2021.
//

import SwiftUI

struct Rotation3DEffect: View {
    
    @State private var flipped: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                
            }.frame(maxWidth: 300, maxHeight: 150)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .rotation3DEffect(
                flipped ? Angle(degrees: 180) : .zero,
                axis: (x: 1.0, y: 0.0, z: 0.0) // play with these, you can create awesome effects
            )
            .animation(.default)
            .onTapGesture {
                flipped.toggle()
            }
        }
    }
}

struct Rotation3DEffect_Previews: PreviewProvider {
    static var previews: some View {
        Rotation3DEffect()
    }
}
