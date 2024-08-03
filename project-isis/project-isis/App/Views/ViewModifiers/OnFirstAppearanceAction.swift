import SwiftUI

struct OnFirstAppearanceAction: ViewModifier {
    var action: (() -> Void)?

    @State private var didFirstAppear = false

    func body(content: Content) -> some View {
        content
            .onAppear {
                guard !didFirstAppear else { return }
                didFirstAppear = true
                action?()
            }
    }
}

public extension View {
    func onFirstAppear(perform action: (() -> Void)? = nil) -> some View {
        modifier(OnFirstAppearanceAction(action: action))
    }
}
