//
//  UserResult.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 08.05.2023.
//

import Foundation

struct UserResult: Decodable {
    let profileImage: Image
}

struct Image: Decodable {
    let small: String
}
