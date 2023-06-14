
import Foundation

struct UserResult: Decodable {
    let profileImage: Image
}

struct Image: Decodable {
    let small: String
}
