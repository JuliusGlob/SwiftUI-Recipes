//
//  AddRemoveMovingLists.swift
//  Lists
//
//  Created by Julio Ismael Robles on 05/11/2021.
//

import SwiftUI

struct AddRemoveMovingLists: View {
    
    @State private var taskName: String = ""
    @State private var tasks: [String] = []
    
    private func deleteTask(indexSet: IndexSet) {
        indexSet.forEach { index in
            tasks.remove(at: index)
        }
    }
    private func moveTask(from source: IndexSet, to destination: Int) {
        tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    TextField("Enter task here", text: $taskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add Task") {
                        tasks.append(taskName)
                        taskName = ""
                    }
                }
                List{
                    ForEach(tasks, id: \.self) { task in
                        Text(task)
                    }.onDelete(perform: deleteTask)
                    .onMove(perform: moveTask)
                    
                }.listStyle(PlainListStyle())
                .toolbar {
                    EditButton()
                }
                
                
            }.padding()
        }
    }
}

struct AddRemoveMovingLists_Previews: PreviewProvider {
    static var previews: some View {
        AddRemoveMovingLists()
        
    }
}
