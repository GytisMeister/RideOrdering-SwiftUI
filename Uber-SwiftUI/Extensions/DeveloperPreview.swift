//
//  DeveloperPreview.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview{
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let mockUser = User(
        fullname: "John Doe",
        email: "johndoe@gmail.clm",
        uid: NSUUID().uuidString,
        coordinates: GeoPoint(latitude: 37.38, longitude: -122.05),
        accountType: .passenger,
        homeLocation: nil,
        workLocation: nil

    )
}
