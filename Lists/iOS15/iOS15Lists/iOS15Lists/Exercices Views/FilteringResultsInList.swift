//
//  FilteringResultsInList.swift
//  iOS15Lists
//
//  Created by Julio Ismael Robles on 06/11/2021.
//

import SwiftUI

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
}

func getPlaces() -> [Place] {
    return  [
        Place(name: "Denver", photo: "denver"),
        Place(name: "Newyork", photo: "ny"),
        Place(name: "Costa Rica", photo: "costa-rica"),
        Place(name: "Seattle", photo: "seattle"),
        Place(name: "Cuba", photo: "cuba"),
    ]
}

struct FilteringResultsInList: View {
    
    @State private var search: String = ""
    @State private var places = getPlaces()
    
    var body: some View {
        NavigationView {
            List(places) { place in
                HStack(alignment: .top) {
                    Image(place.photo)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    Text(place.name)
                        .font(.title)
                    
                }
                //We apply swipe actions on the HStack to perform actions
                .swipeActions(edge: .leading) {
                    Button {
                        // acetion
                    } label: {
                        Label("Heart", systemImage: "heart.circle")
                    }
                }.tint(.yellow)
                    .swipeActions(edge: .trailing) {
                        Button {
                            // acetion
                        } label: {
                            Label("Archive", systemImage: "archivebox.circle.fill")
                        }
                    } .tint(.red)
            }.listStyle(.plain)
                .navigationTitle("Places")
                .searchable(text: $search)
                .onChange(of: search, perform: { value in
                    if !value.isEmpty && value.count >= 1 {
                        places = places.filter{
                            $0.name.lowercased().hasPrefix(value.lowercased())
                        }
                    } else {
                        places = getPlaces()
                    }
                }
                )
        }
    }
}

struct FilteringResultsInList_Previews: PreviewProvider {
    static var previews: some View {
        FilteringResultsInList()
    }
}
