import MapKit
import SwiftUI

struct LocationPermissionView: View {
    @EnvironmentObject var store: MainStore

    private struct Props {}

    private func map(state: MainState) -> Props {
        Props()
    }

    var body: some View {
        let _ = map(state: store.state)

        VStack(alignment: .center, spacing: 15) {
            Text("Discover playgrounds near you")
                .font(DesignSystem.Typography.title2Bold)
                .foregroundStyle(.dark01)
            Text("Find playgrounds and activities that fit your family's needs, from toddler-friendly spaces to adventure zones for older kids.")
                .font(DesignSystem.Typography.footnoteRegular)
                .foregroundStyle(.dark02)
                .multilineTextAlignment(.center)
            Image(.location)
            RoundedButton(
                text: "Allow",
                textColor: DesignSystem.Colors.white,
                backgroundColor: DesignSystem.Colors.green01
            )
            RoundedButton(
                text: "Not yet",
                textColor: DesignSystem.Colors.green01,
                backgroundColor: DesignSystem.Colors.green04
            )
        }
        .padding(.horizontal, 25)
    }
}

#Preview {
    LocationPermissionView()
        .environmentObject(MainStore.selected)
}
