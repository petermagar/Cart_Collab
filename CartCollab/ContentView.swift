//
//  ContentView.swift
//  CartCollab
//
//  Created by Peter on 3/5/24.
//

import SwiftUI
class AppVariable: ObservableObject {
    @Published var selectedTab: Int = 0
}

struct ContentView: View {
    
    var body: some View {
        
        BottomBar(
            AnyView(CartListView()),
            AnyView(SigninView())
        )            
        .environmentObject(AppVariable())
    }
}
#Preview {
    ContentView()
}
