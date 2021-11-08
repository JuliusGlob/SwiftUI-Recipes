//
//  pullToRefresh.swift
//  iOS15Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct pullToRefresh: View {
    
    @State private var refreshDates: [Date] = []
    
    var body: some View {
        
        NavigationView {
            
            List(refreshDates, id: \.self) { date in
            
                Text("\(date)")
                
            }.listStyle(.plain)
                .refreshable {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        let currentDate = Date()
                        refreshDates.append(currentDate)
                    }
                 }
                .navigationTitle("Pull To Refresh")
        }
    }
}

struct pullToRefresh_Previews: PreviewProvider {
    static var previews: some View {
        pullToRefresh()
    }
}
