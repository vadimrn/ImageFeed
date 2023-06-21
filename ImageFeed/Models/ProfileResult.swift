//
//  ProfileResult.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 21.06.2023.
//

import Foundation

struct ProfileResult: Decodable {
    let username: String
    let firstName: String
    let lastName: String?
    let bio: String?
}
