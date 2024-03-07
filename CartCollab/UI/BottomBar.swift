//
//  BottomBar.swift
//  CartCollab
//
//  Created by Peter on 3/6/24.
//

import SwiftUI

struct BottomBar: View {
    @EnvironmentObject private var app: AppVariable
    let CartView: AnyView
    let Account: AnyView
    
    init(
        
       _ CartView: AnyView,
       _ Account: AnyView
    
    ) 
    {
        self.CartView = CartView
        self.Account = Account
        UITabBar.appearance().barTintColor = UIColor(.clear)
        UITabBar.appearance().backgroundColor =
        UIColor(.black)
        UITabBar.appearance().unselectedItemTintColor =
        UIColor(.blue)
        
    }
    
    var body: some View {
        TabView(selection:$app.selectedTab){
            CartView
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                    
                }
                .tag(0)
            Account
                .tabItem{
                    Image (systemName: "person")
                    Text ("Account")
                    
                }
                .tag(1)
        }
        .accentColor(.red)
    }
    
                      
}

#Preview {
    BottomBar(
        AnyView(CartListView()),
        AnyView(SigninView())
    )
    
        .environmentObject(AppVariable())
}
