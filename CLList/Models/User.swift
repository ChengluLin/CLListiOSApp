//
//  User.swift
//  CLList
//
//  Created by ChengLu on 2024/5/30.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
