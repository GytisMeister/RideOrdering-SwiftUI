//
//  User.swift
//  Uber-SwiftUI
//
//  Created by Gytis Ptašinskas on 2023-08-12.
//

import Firebase

enum AccountType: Int, Codable {
    case passenger
    case driver
}

struct User: Codable {
    let fullname: String
    let email: String
    let uid: String
    var coordinates: GeoPoint
    var accountType: AccountType
    var homeLocation: SavedLocation?
    var workLocation: SavedLocation?
}
