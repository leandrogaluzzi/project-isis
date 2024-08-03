import MapKit
import SwiftUI

struct LookAround: View {
    @EnvironmentObject var store: MainStore

    @State private var scene: MKLookAroundScene?

    private struct Props {
        let selectedPlayground: Playground?
    }

    private func map(state: MainState) -> Props {
        Props(
            selectedPlayground: state.selectedPlayground
        )
    }

    var body: some View {
        let props = map(state: store.state)

        if let coordinate = props.selectedPlayground?.coordinate {
            HStack {
                if let scene = scene {
                    LookAroundPreview(initialScene: scene)
                        .frame(height: 200)
                }
            }
            .onAppear {
                getLookAroundScene(coordinate: coordinate)
            }
        }
    }
}

private extension LookAround {
    func getLookAroundScene(coordinate: CLLocationCoordinate2D) {
        scene = nil
        Task {
            let request = MKLookAroundSceneRequest(coordinate: coordinate)
            scene = try? await request.scene
        }
    }
}

#Preview {
    LookAround()
        .environmentObject(MainStore.selected)
}
