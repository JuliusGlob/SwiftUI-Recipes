//
//  RoundedCorners.swift
//  GraphicsShapesPathsEffects
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

struct RoundedCorners: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello, World!")
            }.padding()
            .background(Color.yellow)
         //   .cornerRadius(10.0)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .foregroundColor(.green)
        }
    }
}

struct RoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCorners()
    }
}
