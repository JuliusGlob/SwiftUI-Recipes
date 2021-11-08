//
//  DragView.swift
//  Gestures
//
//  Created by Julio Ismael Robles on 08/11/2021.
//

import SwiftUI

struct DragView: View {
    
    @State private var position = CGPoint(x: 100, y: 100)
    @State private var danger = false
    let bounds = UIScreen.main.bounds
    var body: some View {
        VStack {
            Image("cat3")
                .resizable()
                .frame(width: 100, height: 100)
                .zIndex(1.0)
                .position(position)
                .gesture(DragGesture()
                            .onChanged({ (value) in
                                position = value.location
                                if position.y > bounds.height / 2 {
                                    danger = true
                                } else {
                                    danger = false
                                }
                            })
                            .onEnded({ (value) in
                                
                            })
                )
            HStack{
                Text("Danger")
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(danger ? Color.red : Color.green)
        }
    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
