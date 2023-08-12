//
//  SavedLocation.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import Foundation
import Firebase

struct SavedLocation: Codable {
    let title: String
    let address: String
    let coordinates: GeoPoint
}
