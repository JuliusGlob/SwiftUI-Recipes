//
//  Counter.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import Foundation


///We want to observer any changes to the object.
class Counter: ObservableObject {
    
    ///Whenever the value is changed it will publish an event.
    @Published var value: Int = 0
    
    func increment() {
        ///Any changes to this value may have changes on the UI -> perform this action on the main thread
        DispatchQueue.main.async {
            self.value += 1
        }
        
    }
    func decrement() {
        DispatchQueue.main.async {
            self.value -= 1
        }
    }
    
}
