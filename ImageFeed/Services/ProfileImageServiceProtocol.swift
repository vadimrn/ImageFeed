//
//  ProfileImageServiceProtocol.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 21.06.2023.
//

import Foundation

protocol ProfileImageServiceProtocol {
    func fetchProfileImageURL(username: String, _ completion: @escaping (Result<String, Error>) -> Void)
}
