//
//  ProgramNavView.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct ProgramNavView: View {
    
    @State private var isActive: Bool = false
    @State private var username: String = ""
    @State private var password: String = ""
    
    func login() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            isActive = true
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: ProgramaticallyDetail(), isActive: $isActive, label: {
                    EmptyView()
                })
                TextField("User name", text: $username)
                SecureField("Password", text: $password)
                HStack {
                    Spacer()
                    Button("Login") {
                        login()
                    }
                    Spacer()
                }.buttonStyle(.borderedProminent)
            }
            .navigationTitle("Login")
        }
    }
}

struct ProgramNavView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramNavView()
    }
}
