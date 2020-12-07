//
//  Item.swift
//  FurnitureShop
//
//  Created by Alexandr Istomin on 07.12.2020.
//

import SwiftUI

struct Item: Identifiable{
    
    var id = UUID().uuidString
    var title: String
    var price: String
    var subTitle: String
    var image: String
    var offset : CGFloat = 0
}
