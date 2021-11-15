//
//  SingleColumn.swift
//  Pickers
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI

struct SingleColumn: View {
    
    let genres = ["Fiction", "Horror", "Kids", "Romance"]
    @State var selectedPicker: String = ""
    
    var body: some View {
        VStack {
            Text("Picker selected: \(selectedPicker)")
            Picker("Selected Genre", selection: $selectedPicker) {
                ForEach(genres, id: \.self) { genre in
                    Text(genre)
                    
                }
                
            }.pickerStyle(.wheel) //setup picker style: this is horrible
            
        }
    }
}

struct SingleColumn_Previews: PreviewProvider {
    static var previews: some View {
        SingleColumn()
    }
}
