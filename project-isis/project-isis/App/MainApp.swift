import SwiftUI

@main
struct MainApp: App {
    var body: some Scene {
        let store = MainStore(
            initialState: MainState(),
            reducer: mainReducer,
            middlewares: [
                fetchPlaygrounds()
            ]
        )

        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
