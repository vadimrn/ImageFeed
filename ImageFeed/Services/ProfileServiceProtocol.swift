//
//  ProfileServiceProtocol.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 21.06.2023.
//

import Foundation

protocol ProfileServiceProtocol {
    func fetchProfile(_ token: String, completion: @escaping (Result<Profile, Error>) -> Void)
}
