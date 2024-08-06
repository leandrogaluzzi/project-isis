import Foundation

func isPlaygroundSelectedSelector(state: MainState, playground: Playground) -> Bool {
    state.selectedPlayground == playground
}

func isAnyPlaygroundSelectedSelector(state: MainState) -> Bool {
    state.selectedPlayground != nil
}
