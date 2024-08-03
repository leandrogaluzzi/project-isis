import Foundation

protocol PlaygroundsRepositoring {
    func fetchPlaygrounds() async throws -> [Playground]
}

struct PlaygroundsRepository {
    private let dataSource: PlaygroundsDataSourcing

    init(dataSource: PlaygroundsDataSourcing = PlaygroundsDatasource()) {
        self.dataSource = dataSource
    }
}

extension PlaygroundsRepository: PlaygroundsRepositoring {
    func fetchPlaygrounds() async throws -> [Playground] {
        try await dataSource.fetchPlaygrounds()
    }
}
