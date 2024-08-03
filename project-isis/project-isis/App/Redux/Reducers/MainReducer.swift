import Foundation

func mainReducer(state: MainState, action: ReduxAction) -> MainState {
    var state = state
    state.mapState = mapReducer(state: state.mapState, action: action)
    switch action {
    case _ as GetStartedAction:
        state.isGetStartedVisble = false
    case let action as SelectPlaygroundAction:
        if state.selectedPlayground == nil {
            state.selectedPlayground = action.playground
        } else {
            state.selectedPlayground = nil
        }
    default:
        break
    }
    return state
}
