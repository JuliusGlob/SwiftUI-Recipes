//
//  SheetsApp.swift
//  Sheets
//
//  Created by Julio Ismael Robles on 11/11/2021.
//

import SwiftUI

@main
struct SheetsApp: App {
    
    init() { // fix for transparent nav bar
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.backgroundColor = UIColor.white
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
