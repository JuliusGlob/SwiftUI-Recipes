//
//  PartialSheets.swift
//  Sheets
//
//  Created by Julio Ismael Robles on 11/11/2021.
//

import SwiftUI

struct PartialSheets: View {
    
    @State private var sheetMode: SheetMode = .none
    
    var body: some View {
        ZStack {
            FlexibleSheet(sheetMode: $sheetMode) {
                //insert here content to display by the sheet
                VStack {
                    Text("Hello World")
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            }
            Button("Show") {
                switch sheetMode {
                case .none:
                    sheetMode = .quarter
                case .quarter:
                    sheetMode = .half
                case .half:
                    sheetMode = .full
                case .full:
                    sheetMode = .none
                }
            }
        }
        
    }
}

struct PartialSheets_Previews: PreviewProvider {
    static var previews: some View {
        PartialSheets()
    }
}
