//
//  User.swift
//  Socially Apt
//
//  Created by Joshua Butler on 3/12/24.
//

import Foundation

struct User: Identifiable, Equatable, Codable {
    var id: String
    var name: String
}

extension User {
    static let testUser = User(id: "", name: "Jamie Harris")
}
