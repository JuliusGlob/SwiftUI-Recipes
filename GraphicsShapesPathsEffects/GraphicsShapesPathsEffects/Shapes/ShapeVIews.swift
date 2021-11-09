//
//  ShapeVIews.swift
//  GraphicsShapesPathsEffects
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI



struct ShapeVIews: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.blue)
                .frame(width: .infinity, height: 100)
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 50)
            Ellipse()
                .fill(Color.purple)
                .frame(width: 100, height: 50)
            Path { p in
                p.move(to: CGPoint(x: 100, y: 100))
                p.addLine(to: CGPoint(x: 100, y: 300))
                p.addLine(to: CGPoint(x: 300, y: 300))
                p.addLine(to: CGPoint(x: 100, y: 100))
            }.stroke()
                
        }.padding()
    }
}

struct ShapeVIews_Previews: PreviewProvider {
    static var previews: some View {
        ShapeVIews()
    }
}
