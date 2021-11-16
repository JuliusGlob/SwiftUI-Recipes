//
//  AddTaskScreen.swift
//  SwiftUIUnitTests
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct AddTaskScreen: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @Binding var taskTitle: String
    
    var body: some View {
        NavigationView {
            
            VStack {
                TextField("Enter task", text: $taskTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "addTaskTextField")
                
                Button("Add") {
                    presentationMode.wrappedValue.dismiss()
                }.accessibility(identifier: "addTaskButton")
                
                Spacer()
                
            }.padding()
            
            .navigationTitle("Add Task")
        }
    }
}

struct AddTaskScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskScreen(taskTitle: .constant(""))
    }
}
