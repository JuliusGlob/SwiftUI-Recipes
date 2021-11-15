//
//  SegmentedControl.swift
//  Pickers
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI

struct SegmentedControl: View {
    @State var selection: String = ""
    
    var body: some View {
        VStack {
            Picker("Select", selection: $selection) {
                //Tags will be used to update your selection
                Text("Student").tag("Student")
                Text("Staff").tag("Staff")
                Text("Faculty").tag("Faculty")
            }.pickerStyle(.segmented)
            Text(selection)
        }
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
    }
}
