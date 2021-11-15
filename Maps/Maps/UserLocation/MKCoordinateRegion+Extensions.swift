//
//  MKCoordinateRegion+Extensions.swift
//  Maps
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import Foundation
import MapKit
import SwiftUI


extension MKCoordinateRegion {
    
    static func deafaultRegion() -> MKCoordinateRegion {
        return MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -34.629443, longitude: -58.459868),
                                  latitudinalMeters: 500,
                                  longitudinalMeters: 500 )
    }
    
    func asBindable() -> Binding<MKCoordinateRegion>? {
        return Binding<MKCoordinateRegion>(.constant(self))
    }
}
