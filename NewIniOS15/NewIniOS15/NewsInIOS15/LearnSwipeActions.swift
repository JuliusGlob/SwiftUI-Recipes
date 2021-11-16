//
//  LearnSwipeActions.swift
//  NewIniOS15
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct LearnSwipeActions: View {
    var body: some View {
        List {
            ForEach(1...20, id: \.self) { index in
                Text("\(index)")
                    .swipeActions(edge: .leading) {
                        Button {
                            //action
                        } label: {
                            if index % 2 == 0 {
                                Label("Read", systemImage: "envelope.open")
                            } else {
                                Label("Unread", systemImage: "envelope.badge")
                            }
                        }
                    }
            }
        }
    }
}

struct LearnSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        LearnSwipeActions()
    }
}
