import Foundation

extension MapState {
    static let empty = MapState(
        playgrounds: []
    )

    static let full = MapState(
        playgrounds: [
            Playground.sagradaFamilia,
            Playground.parkGuell,
            Playground.casaBattlo,
            Playground.laPedrera,
        ]
    )
}
