//
//  OAuth2ServiceProtocol.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 21.06.2023.
//

import Foundation

protocol OAuth2ServiceProtocol {
    func fetchAuthToken(_ code: String, completion: @escaping (Result<String, Error>) -> Void)
}
