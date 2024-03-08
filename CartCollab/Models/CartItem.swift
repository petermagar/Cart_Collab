//
//  CartItem.swift
//  CartCollab
//
//  Created by Peter on 3/7/24.
//

import Foundation
class CartItem:ObservableObject{
    let id :String
    @Published var name: String=""
    @Published var type : String=""
    @Published var imageID :String = ""
    
    required init?(id: String, data :[String : Any]){
        let name = data["name"] as? String != nil ? data["name"] as! String : " "
        let type = data["type"] as? String != nil ? data["type"] as! String : " "
        let imageId = data["imageId"] as? String != nil ? data["imageId"] as! String : " "
        
        self.id = id
        self.name = name
        self.type = type
        self.imageID = imageID
    }
    
}
