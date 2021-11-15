//
//  AddAnnotations.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
}


struct AddAnnotations: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -34.629443, longitude: -58.459868),
                                                   latitudinalMeters: 500,
                                                   longitudinalMeters: 500 )
    
    let annotations =  [
        Place(name: "La Bonorino", coordinate: CLLocationCoordinate2D(latitude: -34.628298, longitude: -58.458518)),
        Place(name: "Aromi", coordinate: CLLocationCoordinate2D(latitude: -34.627841, longitude: -58.460056)),
        Place(name: "Fiamma", coordinate: CLLocationCoordinate2D(latitude: -34.626989, longitude: -58.458033))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) {
            MapPin(coordinate: $0.coordinate)
        }
            
    }
}

struct AddAnnotations_Previews: PreviewProvider {
    static var previews: some View {
        AddAnnotations()
    }
}
