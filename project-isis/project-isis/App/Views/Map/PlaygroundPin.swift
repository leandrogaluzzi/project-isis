import MapKit
import SwiftUI

struct PlaygroundPin: View {
    @EnvironmentObject var store: MainStore

    let playground: Playground

    private struct Props {
        let onTap: () -> Void
    }

    private func map(state: MainState) -> Props {
        Props(
            onTap: {
                store.dispatch(SelectPlaygroundAction(playground: playground))
            }
        )
    }

    var body: some View {
        let props = map(state: store.state)

        Circle()
            .frame(width: 20, height: 20)
            .foregroundColor(.red)
            .onTapGesture {
                props.onTap()
            }
    }
}

#Preview {
    PlaygroundPin(playground: Playground.sagradaFamilia)
        .environmentObject(MainStore.full)
}
