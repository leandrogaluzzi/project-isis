import MapKit
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: MainStore

    @State private var isShowingGetStarted: Bool = true

    private struct Props {
        let isGetStatedVisible: Bool
    }

    private func map(state: MainState) -> Props {
        Props(isGetStatedVisible: state.isGetStartedVisble)
    }

    var body: some View {
        let props = map(state: store.state)

        VStack {
            if isShowingGetStarted {
                GetStartedView()
                    .transition(.opacity)
            } else {
                MainView()
                    .transition(.opacity)
            }
        }
        .onChange(of: props.isGetStatedVisible) { oldValue, newValue in
            withAnimation {
                isShowingGetStarted = newValue
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(MainStore.full)
}
