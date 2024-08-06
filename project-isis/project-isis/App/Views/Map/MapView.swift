import MapKit
import SwiftUI

struct MapView: View {
    @EnvironmentObject var store: MainStore

    @State private var position = MapCameraPosition.camera(
        MapCamera(
            centerCoordinate: CLLocationCoordinate2D(
                latitude: 41.3952,
                longitude: 2.1619
            ),
            distance: 10000
        )
    )

    private struct Props {
        let playgrounds: [Playground]
        let onAppear: () -> Void
    }

    private func map(state: MapState) -> Props {
        Props(
            playgrounds: state.playgrounds,
            onAppear: {
                store.dispatch(FetchPlaygroundsAction())
            }
        )
    }

    var body: some View {
        let props = map(state: store.state.mapState)

        Map(
            position: $position
        ) {
            ForEach(props.playgrounds) { playground in
                Annotation(
                    coordinate: playground.coordinate,
                    content: {
                        PlaygroundPin(playground: playground)
                            .environmentObject(store)
                    },
                    label: { EmptyView() }
                )
            }
        }
        .mapControls {
            MapScaleView()
            MapCompass()
            MapPitchToggle()
            MapUserLocationButton()
        }
        .onFirstAppear {
            props.onAppear()
        }
    }
}

#Preview {
    MapView()
        .environmentObject(MainStore.full)
}
