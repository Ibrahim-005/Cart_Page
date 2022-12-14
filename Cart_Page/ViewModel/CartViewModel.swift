//
//  CartViewModel.swift
//  Cart_Page
//
//  Created by cloud_vfx on 01/08/22.
//

import Foundation
import SwiftUI

class CartViewModel: ObservableObject {

    @Published var items = [

        Item(name: "Peace Skull Shirt", details: "Gray - L", image: "p1", price: 20.99, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Myrtle Beach Swetter", details: "White - M", image: "p2", price: 25.69, quantity: 2, offset: 0, isSwiped: false),
        
        Item(name: "Eywa Hoodie", details: "White - L", image: "p3", price: 22.99, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Russ Shirt", details: "Light Red - L", image: "p4", price: 15.2, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Comfort Jacket", details: "Black - M", image: "p5", price: 29.02, quantity: 1, offset: 0, isSwiped: false),
        
        ]
    
}
