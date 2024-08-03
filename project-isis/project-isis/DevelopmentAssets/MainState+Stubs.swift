import Foundation

extension MainState {
    static let empty = MainState(
        mapState: MapState.empty,
        selectedPlayground: nil
    )

    static let full = MainState(
        mapState: MapState.full,
        selectedPlayground: nil
    )

    static let selected = MainState(
        mapState: MapState.full,
        selectedPlayground: Playground.sagradaFamilia
    )
}
