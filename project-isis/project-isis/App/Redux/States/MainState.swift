import Foundation

struct MainState: ReduxState {
    var mapState = MapState()
    var selectedPlayground: Playground?
}

struct MapState: ReduxState {
    var playgrounds: [Playground] = []
}
