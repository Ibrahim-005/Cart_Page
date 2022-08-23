//
//  Item.swift
//  Cart_Page
//
//  Created by cloud_vfx on 01/08/22.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var name : String
    var details : String
    var image: String
    var price: Float
    var quantity: Int
    var offset: CGFloat
    var isSwiped: Bool
}
