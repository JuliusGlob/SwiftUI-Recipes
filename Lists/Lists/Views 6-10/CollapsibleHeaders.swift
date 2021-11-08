//
//  CollapsibleHeaders.swift
//  Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI


struct Place: Identifiable {
    let id = UUID()
    let name: String
    let hikes: [Hike]
}

struct Hike: Identifiable {
    let id = UUID()
    let name: String
}

private func getAllPlacesWithHikes() -> [Place] {
    return [
        Place(name: "Colorado", hikes: [Hike(name: "Trail Ridge"),
                                        Hike(name: "Flatirons"),
                                        Hike(name: "Maroon Bells Peaks")]),
        Place(name: "Oregon", hikes: [Hike(name: "Cascade Mountaints"),
                                      Hike(name: "Crater Lake National Park")])
    ]
}

struct CollapsibleHeaders: View {
    
    @State private var places = getAllPlacesWithHikes()
    @State private var selectedName: String?
    @State private var expanded: Bool = false
    
    var body: some View {
        List(places) { place in
            VStack(alignment: .leading) {
                HStack {
                    Text(place.name)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    Spacer()
                    Image(systemName: selectedName == place.name ? "chevron.down" : "chevron.right")
                }
                .contentShape(Rectangle())
                .onTapGesture(perform: {
                    expanded.toggle()
                    selectedName = expanded ? place.name : nil
                })
                if selectedName == place.name {
                    ForEach(place.hikes) { hike in
                        Text(hike.name)
                    }
                }
            }
        }
    }
}

struct CollapsibleHeaders_Previews: PreviewProvider {
    static var previews: some View {
        CollapsibleHeaders()
    }
}
