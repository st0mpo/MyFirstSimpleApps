//
//  Data.swift
//  Delete Me
//
//  Created by Alexandr Istomin on 15.11.2020.
//

import SwiftUI

struct Food : Hashable {
    let id : Int
    let image : String
    let label : String
}

let foods = [
    Food(id: 0, image: "🍩", label: "Doughnut"),
    Food(id: 1, image: "🍔", label: "Hamburger"),
    Food(id: 2, image: "🍹", label: "Tropical drink"),
    Food(id: 3, image: "🍕", label: "Pizza"),
    Food(id: 4, image: "🥝", label: "Kiwi"),
    Food(id: 5, image: "🥞", label: "Pancakes"),
    Food(id: 6, image: "🍍", label: "Pineapple"),
    Food(id: 7, image: "🍒", label: "Cherries")
]
