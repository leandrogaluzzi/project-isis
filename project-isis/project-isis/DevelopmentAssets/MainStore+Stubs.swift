import Foundation

extension MainStore {
    static let empty = MainStore(
        initialState: MainState.empty,
        reducer: mainReducer
    )

    static let full = MainStore(
        initialState: MainState.full,
        reducer: mainReducer
    )

    static let selected = MainStore(
        initialState: MainState.selected,
        reducer: mainReducer
    )
}
