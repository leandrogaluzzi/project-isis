import SwiftUI

public protocol ReduxAction {}
public protocol ReduxState {}

public typealias ReduxDispatcher = (ReduxAction) -> Void
public typealias ReduxReducer<State: ReduxState> = (State, ReduxAction) -> State
public typealias ReduxMiddleware<State: ReduxState> = (State, ReduxAction, @escaping ReduxDispatcher) async -> Void

public final class ReduxStore<StoreState: ReduxState>: ObservableObject {
    @Published public private(set) var state: StoreState

    private let reducer: ReduxReducer<StoreState>
    private let middlewares: [ReduxMiddleware<StoreState>]

    public init(
        initialState: StoreState,
        reducer: @escaping ReduxReducer<StoreState>,
        middlewares: [ReduxMiddleware<StoreState>] = []
    ) {
        self.state = initialState
        self.reducer = reducer
        self.middlewares = middlewares
    }

    public func dispatch(_ action: ReduxAction) {
        DispatchQueue.main.async {
            self.state = self.reducer(self.state, action)
        }

        middlewares.forEach { middleware in
            Task {
                await middleware(state, action, dispatch)
            }
        }
    }
}
