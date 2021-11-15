//
//  DisplayMap.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI
import MapKit

struct DisplayMap: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -34.629443, longitude: -58.459868),
                                                   latitudinalMeters: 500,
                                                   longitudinalMeters: 500 )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct DisplayMap_Previews: PreviewProvider {
    static var previews: some View {
        DisplayMap()
    }
}
