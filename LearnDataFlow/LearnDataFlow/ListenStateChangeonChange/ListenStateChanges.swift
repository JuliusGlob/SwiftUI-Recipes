//
//  ListenStateChanges.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI



struct ListenStateChanges: View {
    
    @State private var isLightOn: Bool = false
    @State private var lights: Color = Color.black
    
    var body: some View {
        ZStack {
            Color(UIColor(lights)).ignoresSafeArea()
            Toggle("Light", isOn: $isLightOn)
                .onChange(of: isLightOn, perform: { value in
                    if value {
                        lights = Color.white
                        print("Light ON")
                    } else {
                        lights = Color.black
                        print("Light OFF")
                    }
                })
                .foregroundColor(.blue)
                .fixedSize()
        }
    }
}

struct ListenStateChanges_Previews: PreviewProvider {
    static var previews: some View {
        ListenStateChanges()
    }
}
