//
//  ChangeBackgroundColorTableview.swift
//  Lists
//
//  Created by Julio Ismael Robles on 05/11/2021.
//

import SwiftUI

struct ChangeBackgroundColorTableview: View {
    init() {
        //UITableView.appearance().backgroundColor = UIColor.yellow
    }
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1...10, id: \.self) { index in
                    HStack {
                        VStack(alignment: .leading){
                            Text("\(index)")
                            Divider()
                        }
                        Spacer()
                    }
                }
            }.padding()
            .background(Color.green)
        }.background(Color.yellow)
        
    }
    
        /*List() {
            ForEach(1...20, id: \.self) { index in
                HStack {
                    Text("\(index)")
                }.listRowBackground(Color.gray)
            }
        }
        */
    
}

struct ChangeBackgroundColorTableview_Previews: PreviewProvider {
    static var previews: some View {
        ChangeBackgroundColorTableview()
    }
}
