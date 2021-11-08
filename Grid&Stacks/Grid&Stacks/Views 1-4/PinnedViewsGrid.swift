//
//  PinnedViewsGrid.swift
//  Grid&Stacks
//
//  Created by Julio Ismael Robles on 08/11/2021.
//

import SwiftUI

struct PinnedViewsGrid: View {
    
    let columns = [GridItem(.flexible(minimum: 100)), GridItem(.flexible(minimum: 100)), GridItem(.flexible(minimum: 100)),]
    
    private func headerView(_ index: Int) -> some View {
        Text("Section \(index)")
            .font(.title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
    }
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.black]
        UINavigationBar.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, pinnedViews: .sectionHeaders, content: {
                    
                    ForEach(1..<11) { section in
                        Section(header: headerView(section)) {
                            ForEach(1..<Int.random(in: 5...20)) { index in
                                Text("Item \(index)")
                                    .padding()
                                    .foregroundColor(.purple)
                                    .background(Color.yellow)
                            }
                        }
                        
                    }
                })
            }
            .navigationTitle("Pinned Views Demo")
            .frame(width: .infinity)
        } 
    }
}

struct PinnedViewsGrid_Previews: PreviewProvider {
    static var previews: some View {
        PinnedViewsGrid()
    }
}
