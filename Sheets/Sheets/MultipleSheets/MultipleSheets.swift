//
//  MultipleSheets.swift
//  Sheets
//
//  Created by Julio Ismael Robles on 11/11/2021.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    var id: UUID {
        return UUID()
    }
    
    case addItem
    case showItem
}

struct MultipleSheets: View {
    
    @State private var activeSheet: ActiveSheet?
    
    var body: some View {
        HStack {
            Button("Add Item") {
                activeSheet = .addItem
            }
            .buttonStyle(.borderedProminent)
            
            Button("Show Item") {
                activeSheet = .showItem
            }
            .buttonStyle(.borderedProminent)
            
        }
        .sheet(item: $activeSheet) { sheet in
            switch sheet {
            case .addItem:
                AddItemView()
            case .showItem:
                Text("ShowItem")
            }
        }
        
    }
}

struct MultipleSheets_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets()
    }
}
