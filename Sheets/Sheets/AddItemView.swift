//
//  AddItemView.swift
//  Sheets
//
//  Created by Julio Ismael Robles on 11/11/2021.
//

import SwiftUI

struct AddItemView: View {
   
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Text("AddItem View")
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
                .navigationTitle("Add Item View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "house")
                                .foregroundColor(.black)
                        }
                    }
                }
                
            
        }.edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
