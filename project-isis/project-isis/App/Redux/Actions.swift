import Foundation

struct GetStartedAction: ReduxAction {}

struct ErrorFetchingPlaygroundsAction: ReduxAction {}

struct FetchPlaygroundsAction: ReduxAction {}

struct SelectPlaygroundAction: ReduxAction {
    let playground: Playground
}

struct SetPlaygroundsAction: ReduxAction {
    let playgrounds: [Playground]
}
