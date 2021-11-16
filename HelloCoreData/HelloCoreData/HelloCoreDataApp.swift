//
//  HelloCoreDataApp.swift
//  HelloCoreData
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

@main
struct HelloCoreDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(coreDM: CoreDataManager())
        }
    }
}
