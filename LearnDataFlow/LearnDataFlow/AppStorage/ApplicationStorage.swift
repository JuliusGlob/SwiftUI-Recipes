//
//  AppStorage.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

struct ApplicationStorage: View {
    
    @AppStorage("isOn") private var isOn: Bool = false
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $isOn, label: {
                Text("Dark Mode")
                    .foregroundColor(isOn ? .white : .black)
            }).fixedSize()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? Color.black : Color.blue)
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationStorage()
    }
}
