//
//  TabScene.swift
//  TabBar
//
//  Created by Gungor Basa on 4/2/23.
//

import ComposableArchitecture
import Foundation

struct MainTabScene: ReducerProtocol {
    struct State: Equatable {
        var tabA: MockTabScene.State
        var tabB: MockTabScene.State
        var tabC: MockTabScene.State
    }
    
    enum Action: Equatable {
        case tabA(MockTabScene.Action)
        case tabB(MockTabScene.Action)
        case tabC(MockTabScene.Action)
    }
    
    var body: some ReducerProtocol<State, Action> {
        Scope(state: \.tabA, action: /Action.tabA) { MockTabScene() }
        Scope(state: \.tabB, action: /Action.tabB) { MockTabScene() }
        Scope(state: \.tabC, action: /Action.tabC) { MockTabScene() }
    }
}
