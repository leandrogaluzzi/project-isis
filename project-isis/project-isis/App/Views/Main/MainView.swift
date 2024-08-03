import MapKit
import SwiftUI

struct MainView: View {
    @EnvironmentObject var store: MainStore

    private struct Props {
        let selectedPlayground: Playground?
    }

    private func map(state: MainState) -> Props {
        Props(
            selectedPlayground: state.selectedPlayground
        )
    }

    var body: some View {
        let _ = map(state: store.state)

        ZStack(alignment: .bottom) {
            MapView()
            PlaygroundView()
        }
    }
}

#Preview {
    MainView()
        .environmentObject(MainStore.full)
}
