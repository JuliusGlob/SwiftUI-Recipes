//
//  ContentView.swift
//  SwiftUIUnitTests
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var taskName: String = ""
    @State private var tasks: [String] = []
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                List(tasks, id: \.self) { name in
                    Text(name)
                }.accessibility(identifier: "taskList")
            }
            .sheet(isPresented: $isPresented, onDismiss: {
                tasks.append(taskName)
            }, content: {
                AddTaskScreen(taskTitle: $taskName)
            })
            .navigationTitle("Tasks")
            .navigationBarItems(trailing: Button(action: {
                isPresented = true
            }, label: {
                Image(systemName: "plus")
                   
            }).accessibility(identifier: "showAddTaskButton")
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

