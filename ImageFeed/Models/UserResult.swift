//
//  UserResult.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 21.06.2023.
//

import Foundation

struct UserResult: Decodable {
    let profileImage: Image
}

struct Image: Decodable {
    let small: String
}
