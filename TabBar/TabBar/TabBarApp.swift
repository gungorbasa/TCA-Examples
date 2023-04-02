//
//  TabBarApp.swift
//  TabBar
//
//  Created by Gungor Basa on 4/2/23.
//

import SwiftUI

@main
struct TabBarApp: App {
    var body: some Scene {
        WindowGroup {
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
}
