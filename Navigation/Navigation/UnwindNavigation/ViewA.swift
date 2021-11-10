//
//  ViewA.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//
// This is how to perform unwinds, You should start the simulation from ViewA

import SwiftUI

struct ViewA: View {
    
    @State private var isActive: Bool = false
    
    init() { // this can be set on the main app that will manage your appflow in this case would be NavigationApp.swift
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        UINavigationBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ViewB(rootActive: $isActive),
                               isActive: $isActive,
                               label: {
                    
                    Text("Go to view B")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(25)
                        .frame(maxWidth: 300, maxHeight: 150)
                        
                })
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue)
            .navigationTitle("View A")
            
            
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
