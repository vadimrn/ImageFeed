//
//  ProfileResult.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 01.05.2023.
//

import Foundation

struct ProfileResult: Decodable {
    let username: String
    let firstName: String
    let lastName: String?
    let bio: String?
}
