import Foundation

enum APIMethod: String {
    case get
    case post
}

struct APIRequest {
    let baseURL: String
//    let path: String
    let method: APIMethod
//    let queryItems: [URLQueryItem]
//    let headers: [String: String]
//    let body: Encodable?

    init(
        baseURL: String,
//        path: String,
        method: APIMethod
//        queryItems: [URLQueryItem] = [],
//        headers: [String : String] = [:],
//        body: Encodable? = nil
    ) {
        self.baseURL = baseURL
//        self.path = path
        self.method = method
//        self.queryItems = queryItems
//        self.headers = headers
//        self.body = body
    }
}
