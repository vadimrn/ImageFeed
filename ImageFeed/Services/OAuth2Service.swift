//
//  OAuth2Service.swift
//  ImageFeed
//
//  Created by Vadim Nuretdinov on 21.06.2023.
//

import Foundation

final class OAuth2Service: OAuth2ServiceProtocol {
    
    static let shared = OAuth2Service()
    
    private let session = URLSession.shared
    private var task: URLSessionTask?
    private var lastCode: String?
    
    func fetchAuthToken(
        _ code: String,
        completion: @escaping (Result<String, Error>) -> Void
    ) {
        assert(Thread.isMainThread)
        if lastCode == code { return }
        task?.cancel()
        lastCode = code
        
        guard let request = oauth2Request(code) else { return }
        
        let task = session.objectTask(for: request) { [weak self] (result: Result<OAuthTokenResponseBody, Error>) in
            guard let self else { return }
            
            switch result {
            case .success(let body):
                completion(.success(body.accessToken))
            case .failure(let error):
                completion(.failure(error))
                self.lastCode = nil
            }
            self.task = nil
        }
        self.task = task
    }
}

private extension OAuth2Service {
    func oauth2Request(_ code: String) -> URLRequest? {
        
        guard var urlComponents = URLComponents(string: Constants.unsplashTokenURL) else {
            assertionFailure("Failed to get URL from String")
            return nil
        }
        
        urlComponents.queryItems = [
            URLQueryItem(name: "client_id", value: Constants.accessKey),
            URLQueryItem(name: "client_secret", value: Constants.secretKey),
            URLQueryItem(name: "redirect_uri", value: Constants.redirectURI),
            URLQueryItem(name: "code", value: code),
            URLQueryItem(name: "grant_type", value: "authorization_code")
        ]
        
        guard let url = urlComponents.url else {
            assertionFailure("Failed to create URL")
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        return request
    }
}
