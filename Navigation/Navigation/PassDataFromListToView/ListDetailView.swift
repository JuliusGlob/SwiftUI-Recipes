//
//  ListDetailView.swift
//  Navigation
//
//  Created by Julio Ismael Robles on 10/11/2021.
//

import SwiftUI

struct ListDetailView: View {
    
    let displayName: String
    
    var body: some View {
        Text(displayName)
            .frame(maxWidth: 100, maxHeight: 50)
            .background(Color.yellow)

    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(displayName: "hiya")
    }
}
