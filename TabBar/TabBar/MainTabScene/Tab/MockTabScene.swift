//
//  TabAScene.swift
//  TabBar
//
//  Created by Gungor Basa on 4/2/23.
//

import ComposableArchitecture
import Foundation
import SwiftUI

struct MockTabScene: ReducerProtocol {
    struct State: Equatable {
        let text: String
        let textColor: Color
        let backgroundColor: Color
    }
    
    enum Action: Equatable {}
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {}
}
