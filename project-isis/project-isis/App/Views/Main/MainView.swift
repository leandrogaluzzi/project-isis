import MapKit
import SwiftUI

struct MainView: View {
    @EnvironmentObject var store: MainStore

    @State private var isShowingBottomSheet = false

    private struct Props {
        let isPlaygroundSelected: Bool
    }

    private func map(state: MainState) -> Props {
        Props(
            isPlaygroundSelected: isAnyPlaygroundSelectedSelector(
                state: state
            )
        )
    }

    var body: some View {
        let props = map(state: store.state)

        ZStack(alignment: .bottom) {
            MapView()
        }
        .onChange(of: props.isPlaygroundSelected) { _, newValue in
            isShowingBottomSheet = newValue
        }
        .sheet(isPresented: $isShowingBottomSheet) {
            PlaygroundView()
                .presentationDetents(
                    [
                        .fraction(0.2),
                        .fraction(0.95)
                    ]
                )
        }
    }
}

#Preview {
    MainView()
        .environmentObject(MainStore.full)
}
