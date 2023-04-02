//
//  MockTabView.swift
//  TabBar
//
//  Created by Gungor Basa on 4/2/23.
//

import ComposableArchitecture
import SwiftUI

struct MockTabView: View {
    var store: StoreOf<MockTabScene>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            ZStack {
                viewStore.backgroundColor
                Text(viewStore.text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(viewStore.textColor)
            }
            .ignoresSafeArea(edges: [.top])
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MockTabView(store: .init(initialState: .init(text: "Text", textColor: .yellow, backgroundColor: .red), reducer: MockTabScene()))
    }
}
