import SwiftUI

struct RoundedButton: View {
    let text: String
    let textColor: Color
    let backgroundColor: Color

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 48)
                .foregroundStyle(backgroundColor)
                .cornerRadius(DesignSystem.Corners.medium)
            Text(text)
                .foregroundStyle(textColor)
                .font(DesignSystem.Typography.calloutRegular)
        }
    }
}

#Preview {
    RoundedButton(
        text: "Button",
        textColor: DesignSystem.Colors.white,
        backgroundColor: DesignSystem.Colors.blue01
    )
}
