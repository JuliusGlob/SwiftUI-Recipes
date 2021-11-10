//
//  BlurEffectView.swift
//  GraphicsShapesPathsEffects
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

///We create a UIKit representable to use in SwiftUI looks pretty good
struct VissualEffectView: UIViewRepresentable {
    var effect : UIVisualEffect?
    typealias UIViewType = UIVisualEffectView
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView()
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = effect
    }
    
}


struct BlurEffectView: View {
    var body: some View {
        
        ZStack{
            Image("Cloud")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            //.blur(radius: 20) <-- easiest. not best
            VissualEffectView(effect: UIBlurEffect(style: .dark))
                .edgesIgnoringSafeArea(.all)
            Text("Cat")
                .font(.largeTitle)
                .foregroundColor(.white)
            /* Beware these materials only work on iOS 15
             .frame(maxWidth: 300, maxHeight: 300)
             .background(.ultraThinMaterial) */
        }
    }
}

struct BlurEffectView_Previews: PreviewProvider {
    static var previews: some View {
        BlurEffectView()
    }
}
