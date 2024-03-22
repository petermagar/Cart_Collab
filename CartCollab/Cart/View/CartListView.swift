//
//  CartListView.swift
//  CartCollab
//
//  Created by Peter on 3/6/24.
//

import SwiftUI

struct CartListView: View {
    @State private var count = 6 // TODO: Remove after debugging
    @State var items : [CartItem] = [
        CartItem(id: "1", data: ["name" : "Cart Item 1", "type" : "Food", "imageId" : "fork.knife.circle"])!,
        CartItem(id: "2", data: ["name" : "Cart Item 2", "type" : "Food", "imageId" : "fork.knife.circle"])!,
        CartItem(id: "3", data: ["name" : "Cart Item 3", "type" : "Kitchen Supplies", "imageId" : "fork.knife.circle"])!,
        CartItem(id: "4", data: ["name" : "Cart Item 4", "type" : "Hardware", "imageId" : "hammer.circle"])!,
        CartItem(id: "5", data: ["name" : "Cart Item 5", "type" : "Food", "imageId" : "fork.knife.circle"])!
    ]
    
    var body: some View {
            let list = ScrollView{
                ForEach( items , id: \.self.id){
                    (item:CartItem) in CartItemController(cartItem: item)
                }
            }
        let button = SwiftUI.VStack{
            Spacer()
            HStack{
                Spacer()
                Button (action: clickAdd, label: {
                    Text ("+")
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color(.systemBlue))
                                .frame(width: 50 , height: 50)
                            
                        )
                        .font(.system(.largeTitle))
                        .foregroundColor(Color.white)
                    
                })
                .ignoresSafeArea()
                .padding(EdgeInsets(top:0 ,leading: 0,bottom: 25,trailing: 25))
            }
        }
                VStack{
                Text ("Cart Collab ")
                    .font(.system(size: 50, weight: .bold))
                
                ZStack{
                list
                button
                }
            }
            
        }
private func clickAdd(){
            items.append(CartItem(id: "\(count)", data: ["name" : "Cart Item \(count)", "type" : "Food", "imageId" : "fork.knife.circle"])!)
            count += 1
        }
    }
#Preview{
    CartListView()
}
    
    
