import Foundation

struct MainState: ReduxState {
    var mapState = MapState()
    var isGetStartedVisble: Bool = true
    var selectedPlayground: Playground?
}

struct MapState: ReduxState {
    var playgrounds: [Playground] = []
}
