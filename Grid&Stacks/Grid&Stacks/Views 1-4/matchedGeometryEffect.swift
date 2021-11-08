//
//  matchedGeometryEffect.swift
//  Grid&Stacks
//
//  Created by Julio Ismael Robles on 08/11/2021.
//
// How to perform hero animation using matchedGeometryEffect

import SwiftUI

struct matchedGeometryEffect: View {
    
    @Namespace var namespace
    @State private var selectedSymbol: String?
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    let symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    
    var body: some View {
        VStack {
            if selectedSymbol == nil {
                LazyVGrid(columns: columns, content: {
                    ForEach(symbols, id: \.self) { symbol in
                        Image(systemName: symbol)
                            .padding()
                            .font(.system(size: 40))
                            .matchedGeometryEffect(id: symbol, in: namespace)
                            .onTapGesture {
                                selectedSymbol = symbol
                            }
                            
                    }
                    
                }).animation(.spring())

            } else if let selectedSymbol = selectedSymbol {
        
                Image(systemName: selectedSymbol)
                    .matchedGeometryEffect(id: selectedSymbol, in: namespace)
                    .font(.system(size: 70))
                    .onTapGesture {
                        withAnimation {
                            self.selectedSymbol = nil
                        }
                    }
                    .animation(.spring())
                Spacer()
            }
            
        }
    }
}

struct matchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        matchedGeometryEffect()
    }
}
