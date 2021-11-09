//
//  OptionalBindings.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//
//
//  Ways to unwrap optional bindings


import SwiftUI

struct OptionalBindings: View {
    
    let name: String? = "john doe"
    
    var body: some View {
        VStack {
            Text(name!) // this will blow up if it's nil
            
            Text(name ?? "") // nil coalescing operator
            
            name.map {
                Text($0)
            } //by mapping it, we will get the unwrapped version
            
            if let name = name { /// safe unwrapping, must consider what happens if this fails
                Text(name)
            }
        }
    }
}

struct OptionalBindings_Previews: PreviewProvider {
    static var previews: some View {
        OptionalBindings()
    }
}
