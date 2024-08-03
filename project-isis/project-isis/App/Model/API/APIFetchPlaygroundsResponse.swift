import Foundation

struct APIFetchPlaygroundsResponse: Decodable {
    let elements: [APIPlayground]
}

extension APIFetchPlaygroundsResponse {
    func toModel() -> [Playground] {
        elements.compactMap { $0.toModel() }
    }
}
