import MapKit
import SwiftUI

struct PlaygroundView: View {
    @EnvironmentObject var store: MainStore

    private struct Props {
        let onDisappear: () -> Void
    }

    private func map(state: MainState) -> Props {
        Props(
            onDisappear: {
                store.dispatch(DeselectPlaygroundAction())
            }
        )
    }

    var body: some View {
        let props = map(state: store.state)

        VStack {
            Text("PLAYGROUND")
        }
        .onDisappear {
            props.onDisappear()
        }
    }
}

#Preview {
    PlaygroundView()
        .environmentObject(MainStore.selected)
}
