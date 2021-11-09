//
//  GlobalState.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//
// How to implement global state using @EnvironmentObject

import SwiftUI

struct GlobalState: View {
    
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(counter.value)")
                .font(.largeTitle)
            GreenCounterView()
            RedCounterView()
        }
    }
}

struct GreenCounterView: View {
    
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        HStack {
            Text("\(counter.value)")
                .font(.largeTitle)
            Button("Increment") {
                counter.increment()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            Button("Decrement") {
                counter.decrement()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
        }
    }
}
struct RedCounterView: View {
    
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        HStack {
            Text("\(counter.value)")
                .font(.largeTitle)
            Button("Increment") {
                counter.increment()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            
            Button("Decrement") {
                counter.decrement()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
        }
    }
}

struct GlobalState_Previews: PreviewProvider {
    static var previews: some View {
        let counter = Counter()
        GlobalState().environmentObject(counter)
    }
}
