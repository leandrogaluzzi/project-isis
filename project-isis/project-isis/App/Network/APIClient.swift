import Foundation

protocol APIClienting {
    func request<T: Decodable>(request: APIRequest, response: T.Type) async throws -> T
}

struct APIClient: APIClienting {
    func request<T: Decodable>(request: APIRequest, response: T.Type) async throws -> T {
        guard let urlComponents = request.toURLComponents() else {
            throw APIError()
        }

//        debugPrint(urlComponents.path)
        
        guard let url = urlComponents.url else {
            throw APIError()
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
//            let string = String(data: data, encoding: .utf8)
//            debugPrint(string)
            let json = try JSONDecoder().decode(response, from: data)
//            debugPrint(json)
            return json
        } catch {
            throw APIError()
        }
    }
}

private extension APIRequest {
    func toURLComponents() -> URLComponents? {
        let urlComponents = URLComponents(string: baseURL)
//        urlComponents?.path = path
//        urlComponents?.queryItems = queryItems
        return urlComponents
    }
}
