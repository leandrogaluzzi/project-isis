import Foundation

protocol PlaygroundsDataSourcing {
    func fetchPlaygrounds() async throws -> [Playground]
}

struct PlaygroundsDatasource {
    private let apiClient: APIClienting

    init(apiClient: APIClienting = APIClient()) {
        self.apiClient = apiClient
    }
}

extension PlaygroundsDatasource: PlaygroundsDataSourcing {
    func fetchPlaygrounds() async throws -> [Playground] {
        try await apiClient
            .request(
                request: APIRequest(
                    baseURL: Configuration.baseURL,
                    method: .get
                ),
                response: APIFetchPlaygroundsResponse.self
            )
            .toModel()
    }
}
