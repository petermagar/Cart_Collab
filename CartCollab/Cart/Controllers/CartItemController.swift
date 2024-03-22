//
//  CartItemController.swift
//  CartCollab
//
//  Created by Peter on 3/21/24.
//

import SwiftUI

struct CartItemController: View {
    @ObservedObject var cartItem: CartItem

    var body: some View {
        Card(
            cornerRadius: 16,
            elevation: 3,
            height: 150,
            color: Color(.white),
            focusColor: Color(.systemRed).opacity(0.05),
            views: {
                AnyView(
                    HStack{
                        
                Image(systemName:cartItem.imageId)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(20)
                Spacer()
                VStack{
                    Text(cartItem.name)
                    Text(cartItem.type)
                }
                        Spacer()
                    }
                )
            }, click : clickCartItem,
        longClick : longClickCartItem
        )
    }

    private func clickCartItem(){

    }

    private func longClickCartItem(){

    }
}

#Preview {
    CartItemController(cartItem:
                        CartItem(id: "1", data: ["name" : "Cart Item 1", "type" : "Food", "imageId" : "fork.knife.circle"])!
    )
}
