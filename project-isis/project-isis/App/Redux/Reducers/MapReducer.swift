import Foundation

func mapReducer(state: MapState, action: ReduxAction) -> MapState {
    var state = state
    switch action {
    case let action as SetPlaygroundsAction:
        state.playgrounds = action.playgrounds
    default:
        break
    }
    return state
}
