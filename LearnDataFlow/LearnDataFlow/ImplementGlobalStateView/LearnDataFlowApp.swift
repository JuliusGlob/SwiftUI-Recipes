//
//  LearnDataFlowApp.swift
//  LearnDataFlow
//
//  Created by Julio Ismael Robles on 09/11/2021.
//

import SwiftUI

@main
struct LearnDataFlowApp: App {
    var body: some Scene {
        WindowGroup {
            ///With this setup not only the parent view we are calling but also it's childs
            ///will have access to the counter object
            let counter = Counter()
            GlobalState().environmentObject(counter)
        }
    }
}
