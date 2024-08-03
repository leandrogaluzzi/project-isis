import Foundation

func fetchPlaygrounds(
    playgroundsRepository: PlaygroundsRepositoring = PlaygroundsRepository()
) -> ReduxMiddleware<MainState> {
    return { state, action , dispatch in
        switch action {
        case _ as FetchPlaygroundsAction:
            do {
                let playgrounds = try await playgroundsRepository.fetchPlaygrounds()
                dispatch(SetPlaygroundsAction(playgrounds: playgrounds))
            } catch {
                dispatch(ErrorFetchingPlaygroundsAction())
            }
        default:
            break
        }
    }
}
