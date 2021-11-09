//
//  OnReceiveModifier.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//
// How to listen for notifications using onReceive modifier

import SwiftUI

extension Notification.Name {
    static let taskAddedNotification = Notification.Name("TaskAddedNotification")
}

struct OnReceiveModifier: View {
    
    @State private var newTask: String?
    
    var body: some View {
        VStack {
            Button("Post Notification") {
                NotificationCenter.default.post(name: Notification.Name.taskAddedNotification, object: "Wash the car")
            }
            Text(newTask ?? "").onReceive(NotificationCenter.default.publisher(for: Notification.Name.taskAddedNotification), perform: {
                
                newTask = $0.object as? String
                
            })
        }
    }
}

struct OnReceiveModifier_Previews: PreviewProvider {
    static var previews: some View {
        OnReceiveModifier()
    }
}
