//
//  GeoPoint.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-13.
//

import Firebase
import CoreLocation

extension GeoPoint {
    func toCoordinate() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}
