import MapKit
import SwiftUI

struct GetStartedView: View {
    @EnvironmentObject var store: MainStore

    private struct Props {
        let onTapGetStarted: () -> Void
    }

    private func map(state: MainState) -> Props {
        Props(
            onTapGetStarted: {
                store.dispatch(GetStartedAction())
            }
        )
    }

    var body: some View {
        let props = map(state: store.state)

        VStack {
            Spacer()
            VStack(spacing: 50) {
                Image(.goPlay)
                text()
            }
            Spacer()
            Button {
                props.onTapGetStarted()
            } label: {
                RoundedButton(
                    text: "Get Started",
                    textColor: DesignSystem.Colors.dark01,
                    backgroundColor: DesignSystem.Colors.white
                )
            }
            .padding(.bottom, 100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(DesignSystem.Colors.purple01)
    }
}

private extension GetStartedView {
    func text() -> some View {
        Text("Connects Families to the Best \nKid-Friendly Adventures.")
            .foregroundStyle(DesignSystem.Colors.white)
            .font(DesignSystem.Typography.title3Medium)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    GetStartedView()
        .environmentObject(MainStore.full)
}
