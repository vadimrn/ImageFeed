import UIKit

struct DecodingInfo {
    struct API {
       static let accessKey = "pV6xhy75yGCUaEKTDdxHfmB-6gIZ3RDsj_yB_ntQ3i4"
       static let secretKey = "LJp0_OtLP0hqsKq760ISI5Xq0dqZlxnb4ZDfW_Do3Rg"
       static let redirectURI = "urn:ietf:wg:oauth:2.0:oob"
       static let accessScope = "public+read_user+write_likes"
       static let defaultBaseURL = "https://api.unsplash.com"
       static let unsplashAuthorizeURLString = "https://unsplash.com/oauth/authorize"
    }
    
    struct IB {
       static let webViewSegueIdentifier = "ShowWebView"
       static let tabBarControllerIdentifier = "TabBarViewController"
       static let authViewControllerIdentifier = "AuthViewController"
    }
}
