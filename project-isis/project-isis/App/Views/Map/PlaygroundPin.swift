import MapKit
import SwiftUI

struct PlaygroundPin: View {
    @EnvironmentObject var store: MainStore

    let playground: Playground

    private struct Props {
        let isPlaygroundSelected: Bool
        let onTap: () -> Void
    }

    private func map(state: MainState) -> Props {
        Props(
            isPlaygroundSelected: isPlaygroundSelectedSelector(
                state: state, 
                playground: playground
            ),
            onTap: {
                store.dispatch(SelectPlaygroundAction(playground: playground))
            }
        )
    }

    var body: some View {
        let props = map(state: store.state)

        ZStack(alignment: .center) {
            Circle()
                .fill(DesignSystem.Colors.white)
                .frame(width: 28, height: 28)
            Circle()
                .fill(DesignSystem.Colors.green01)
                .frame(width: 24, height: 24)
            Image(.swingIcon)
                .resizable()
                .frame(width: 16, height: 16)
        }
        .onTapGesture {
            props.onTap()
        }
    }
}

#Preview {
    PlaygroundPin(playground: Playground.sagradaFamilia)
        .environmentObject(MainStore.full)
}
