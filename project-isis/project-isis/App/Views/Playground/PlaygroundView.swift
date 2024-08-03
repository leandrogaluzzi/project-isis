import MapKit
import SwiftUI

struct PlaygroundView: View {
    @EnvironmentObject var store: MainStore

    private struct Props {}

    private func map(state: MainState) -> Props {
        Props()
    }

    var body: some View {
        let _ = map(state: store.state)

        LookAround()
    }
}

#Preview {
    PlaygroundView()
        .environmentObject(MainStore.selected)
}
