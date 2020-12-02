//
//  Item.swift
//  Juice
//
//  Created by Alexandr Istomin on 29.11.2020.
//

import SwiftUI

struct Item : Identifiable {
    var id = UUID().uuidString
    var title : String
    var price : String
    var discount : String
    var image : String
}


