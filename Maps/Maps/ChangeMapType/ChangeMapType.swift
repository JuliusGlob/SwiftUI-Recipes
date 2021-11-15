//
//  ChangeMapType.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI
import MapKit

struct ChangeMapType: View {
    
    @State private var mapType: MKMapType = .standard
    
    var body: some View {
        VStack {
            Picker("Select", selection: $mapType) {
                Text("Standard").tag(MKMapType.standard)
                Text("Satellite").tag(MKMapType.satellite)
                Text("Hybrid").tag(MKMapType.hybrid)
            }.pickerStyle(.segmented)
            MapView(mapType: mapType)
        }
    }
}

struct ChangeMapType_Previews: PreviewProvider {
    static var previews: some View {
        ChangeMapType()
    }
}
