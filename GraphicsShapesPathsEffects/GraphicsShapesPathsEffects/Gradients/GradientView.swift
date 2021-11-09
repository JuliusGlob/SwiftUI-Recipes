//
//  GradientView.swift
//  GraphicsShapesPathsEffects
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        // LinearGradiant
        //.background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), startPoint: .top, endPoint: .bottom))
        //RadialGradient
        //.background(RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), center: .center, startRadius: 25, endRadius: 500))
        // Angular Gradient
        .background(AngularGradient(gradient: Gradient(colors: [Color.yellow, Color.green, Color.purple, Color.blue]), center: .center))
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
