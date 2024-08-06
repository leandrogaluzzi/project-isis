import Foundation

struct DeselectPlaygroundAction: ReduxAction {}

struct ErrorFetchingPlaygroundsAction: ReduxAction {}

struct FetchPlaygroundsAction: ReduxAction {}

struct GetStartedAction: ReduxAction {}

struct SelectPlaygroundAction: ReduxAction {
    let playground: Playground
}

struct SetPlaygroundsAction: ReduxAction {
    let playgrounds: [Playground]
}
