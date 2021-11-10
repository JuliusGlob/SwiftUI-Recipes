//
//  NavView.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
// 

import SwiftUI

struct NavView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                ///Beware iOS 15
                NavigationLink(isActive: $isActive) {
                    NavDetailView()
                } label: {
                    Button("go to detail view") {
                        isActive = true
                    }
                }

                
            }
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
