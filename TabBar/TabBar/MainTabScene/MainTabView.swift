//
//  MainTabView.swift
//  TabBar
//
//  Created by Gungor Basa on 4/2/23.
//

import ComposableArchitecture
import SwiftUI

struct MainTabView: View {
    var store: StoreOf<MainTabScene>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            TabView {
                MockTabView(store: .init(initialState: viewStore.state.tabA, reducer: MockTabScene()))
                    .tabItem {
                        Image(systemName: "a.circle.fill")
                    }
                MockTabView(store: .init(initialState: viewStore.state.tabB, reducer: MockTabScene()))
                    .tabItem {
                        Image(systemName: "b.circle.fill")
                    }
                MockTabView(store: .init(initialState: viewStore.state.tabC, reducer: MockTabScene()))
                    .tabItem {
                        Image(systemName: "c.circle.fill")
                    }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(
            store: .init(
                initialState: .init(
                    tabA: MockTabScene.State(text: "Tab A", textColor: .yellow, backgroundColor: .red),
                    tabB: MockTabScene.State(text: "Tab B", textColor: .red, backgroundColor: .yellow),
                    tabC: MockTabScene.State(text: "Tab C", textColor: .purple, backgroundColor: .orange)
                ), reducer: MainTabScene()
            )
        )
    }
}
