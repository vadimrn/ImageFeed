import Foundation

protocol OAuth2ServiceProtocol {
    func fetchAuthToken(_ code: String, completion: @escaping (Result<String, Error>) -> Void)
    func fetchDataTask(for request: URLRequest, completion: @escaping (Result<OAuthTokenResponseBody, Error>) -> Void) -> URLSessionDataTask
}
